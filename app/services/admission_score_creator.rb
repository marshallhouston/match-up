class AdmissionScoreCreator

  def initialize(user, score_params)
    @user = user
    @score_params = score_params
  end

  def call
    create_score
  end

  private
    attr_reader :user, :score_params

    def create_score
      admission_score = user.admission_scores.new(score_params)
      index_score = ScoreCalculatorService.score(score_params[:gpa].to_f, score_params[:sat_score].to_i)
      admission_score.update(admission_index_score: index_score)
      create_school_associations(index_score, admission_score)
      admission_score.save
    end


    def create_school_associations(index_score, admission_score)
      strong_schools(index_score).each do |school|
        admission_score.score_schools.create(school: school, status: 0)
      end
      average_schools(index_score).each do |school|
        admission_score.score_schools.create(school: school, status: 1)
      end
      below_average_schools(index_score).each do |school|
        admission_score.score_schools.create(school: school, status: 2)
      end
    end

    def strong_schools(index_score)
      School.where('? >= min_admission_score', (index_score - 10))
    end

    def average_schools(index_score)
      School.where(min_admission_score: (index_score - 10)..index_score)
    end

    def below_average_schools(index_score)
      School.where('min_admission_score > ?', index_score)
    end

end
