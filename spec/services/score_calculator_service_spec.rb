require 'rails_helper'

describe ScoreCalculatorService do
  describe ".class_methods" do
    describe ".score(gpa, sat_score)" do
      it "takes in a gpa and sat_score (0-530) and returns a Colorado Admissions Index Score" do
        gpa = 3.2
        sat_score = 520

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 79
      end

      it "takes in a gpa and sat_score (540-610) and returns a Colorado Admissions Index Score" do
        gpa = 2.3
        sat_score = 570

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 65
      end

      it "takes in a gpa and sat_score (620-700) and returns a Colorado Admissions Index Score" do
        gpa = 2.7
        sat_score = 630

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 74
      end

      it "takes in a gpa and sat_score (710-770) and returns a Colorado Admissions Index Score" do
        gpa = 2.4
        sat_score = 710

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 71
      end

      it "takes in a gpa and sat_score (780-830) and returns a Colorado Admissions Index Score" do
        gpa = 3.3
        sat_score = 830

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 89
      end

      it "takes in a gpa and sat_score (840-870) and returns a Colorado Admissions Index Score" do
        gpa = 3.5
        sat_score = 870

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 95
      end

      it "takes in a gpa and sat_score (880-910) and returns a Colorado Admissions Index Score" do
        gpa = 1.7
        sat_score = 890

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 64
      end

      it "takes in a gpa and sat_score (920-950) and returns a Colorado Admissions Index Score" do
        gpa = 2.8
        sat_score = 950

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 86
      end

      it "takes in a gpa and sat_score (960-1000) and returns a Colorado Admissions Index Score" do
        gpa = 3.9
        sat_score = 980

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 108
      end

      it "takes in a gpa and sat_score (1010-1040) and returns a Colorado Admissions Index Score" do
        gpa = 4.0
        sat_score = 1010

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 112
      end

      it "takes in a gpa and sat_score (1050-1080) and returns a Colorado Admissions Index Score" do
        gpa = 4.0
        sat_score = 1060

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 114
      end

      it "takes in a gpa and sat_score (1090-1120) and returns a Colorado Admissions Index Score" do
        gpa = 2.6
        sat_score = 1090

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 92
      end

      it "takes in a gpa and sat_score (1130-1140) and returns a Colorado Admissions Index Score" do
        gpa = 3.6
        sat_score = 1130

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 112
      end

      it "takes in a gpa and sat_score (1150-1180) and returns a Colorado Admissions Index Score" do
        gpa = 3.1
        sat_score = 1170

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 105
      end

      it "takes in a gpa and sat_score (1190-1220) and returns a Colorado Admissions Index Score" do
        gpa = 3.0
        sat_score = 1210

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 105
      end

      it "takes in a gpa and sat_score (1230-1260) and returns a Colorado Admissions Index Score" do
        gpa = 2.1
        sat_score = 1250

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 91
      end

      it "takes in a gpa and sat_score (1270-1300) and returns a Colorado Admissions Index Score" do
        gpa = 2.0
        sat_score = 1290

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 91
      end

      it "takes in a gpa and sat_score (1310-1330) and returns a Colorado Admissions Index Score" do
        gpa = 3.5
        sat_score = 1330

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 120
      end

      it "takes in a gpa and sat_score (1340-1360) and returns a Colorado Admissions Index Score" do
        gpa = 1.5
        sat_score = 1350

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 86
      end

      it "takes in a gpa and sat_score (1370-1400) and returns a Colorado Admissions Index Score" do
        gpa = 1.8
        sat_score = 1390

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 93
      end

      it "takes in a gpa and sat_score (1410-1440) and returns a Colorado Admissions Index Score" do
        gpa = 4.0
        sat_score = 1440

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 135
      end

      it "takes in a gpa and sat_score (1450-1470) and returns a Colorado Admissions Index Score" do
        gpa = 3.8
        sat_score = 1460

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 133
      end

      it "takes in a gpa and sat_score (1480-1510) and returns a Colorado Admissions Index Score" do
        gpa = 3.6
        sat_score = 1500

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 132
      end

      it "takes in a gpa and sat_score (1520-1550) and returns a Colorado Admissions Index Score" do
        gpa = 2.7
        sat_score = 1520

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 118
      end

      it "takes in a gpa and sat_score (1560-1590) and returns a Colorado Admissions Index Score" do
        gpa = 3.1
        sat_score = 1570

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 128
      end

      it "takes in a gpa and sat_score (1600) and returns a Colorado Admissions Index Score" do
        gpa = 4.0
        sat_score = 1600

        expect(ScoreCalculatorService.score(gpa, sat_score)).to eq 146
      end
    end
  end
end
