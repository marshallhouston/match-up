require 'rails_helper'

RSpec.describe AdmissionScore, type: :model do
  describe "validations" do
    it "is valid with a gpa between 0-4.0 and an sat_score between 400-1600" do
      attrs = { gpa: 2.3, sat_score: 450, user: create(:user)}
      as = AdmissionScore.new(attrs)

      expect(as).to be_valid
    end
  end

  describe "relationships" do
    it "belongs to a user" do
      admission_score = create(:admission_score)

      expect(admission_score).to respond_to(:user)
    end
  end

  describe ".class_methods" do
    describe ".lastest_scores" do
      it "returns the most recently created scores first" do
        admission_score1 = create(:admission_score, created_at: Time.now)
        admission_score2 = create(:admission_score, created_at: (Time.now - 2) )

        expect(AdmissionScore.latest_scores.first).to eq admission_score1
        expect(AdmissionScore.latest_scores.last).to eq admission_score2
      end
    end
  end

  describe "#instance_methods" do
    describe "#strong_schools" do
      context "admission_index_score at least 10 points greater than the school's min_admission_score" do
        it "returns schools where the admission_index_score is considered strong" do
          admission_score = create(:admission_score, admission_index_score: 100)
          school_1 = create(:school, min_admission_score: 89)
          school_2 = create(:school, min_admission_score: 91)
          school_3 = create(:school, min_admission_score: 101)

          strong_schools = admission_score.strong_schools

          expect(strong_schools).to include school_1
          expect(strong_schools).not_to include school_2
          expect(strong_schools).not_to include school_3
        end
      end
    end

    describe "#average_schools" do
      context "admission_index_score 0-9 points greater than the school's min_admission_score" do
        it "returns all schools where the admission_index_score is considered average" do
          admission_score = create(:admission_score, admission_index_score: 80)
          school_1 = create(:school, min_admission_score: 90)
          school_2 = create(:school, min_admission_score: 71)
          school_3 = create(:school, min_admission_score: 78)

          average_schools = admission_score.average_schools

          expect(average_schools).to include school_2
          expect(average_schools).to include school_3
          expect(average_schools).not_to include school_1
        end
      end
    end

    describe "#below_average_schools" do
      context "admission_index_score is less than the school's min_admission_score" do
        it "returns all schools where the admission_index_score is considered below_average" do
          admission_score = create(:admission_score, admission_index_score: 90)
          school_1 = create(:school, min_admission_score: 89)
          school_2 = create(:school, min_admission_score: 91)

          below_average_schools = admission_score.below_average_schools

          expect(below_average_schools).to include school_2
          expect(below_average_schools).not_to include school_1
        end
      end
    end
  end
end
