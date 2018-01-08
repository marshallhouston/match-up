require 'rails_helper'

RSpec.describe School, type: :model do
  describe "validations" do
    it "is valid with a name and min_admission_score" do
      attrs = {name: "University of Mountains", min_admission_score: 60 }
      school = School.new(attrs)
      expect(school).to be_valid
    end
  end

  describe "relationships" do
    it "has_many admission_scores" do
      school = create(:school)

      expect(school).to respond_to(:admission_scores)
    end
  end
end
