require 'rails_helper'

RSpec.describe AdmissionScore, type: :model do
  describe "validations" do
    it "is valid with a gpa between 0-4.0 and an sat_score between 400-1600" do
      attrs = { gpa: 2.3, sat_score: 450}
      as = AdmissionScore.new(attrs)

      expect(as).to be_valid
    end
  end
end
