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
      admission_score.save
    end

end
