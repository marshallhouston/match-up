require 'rails_helper'

describe ScoreCalculatorService do
  describe ".class_methods" do
    describe ".score(gpa, sat_score)" do
      it "takes in a gpa and sat_score and returns a Colorado Admissions Index Score" do
        gpa = 3.2
        sat_score = 1050

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 99
      end
    end
  end
end
