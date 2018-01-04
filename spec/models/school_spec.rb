require 'rails_helper'

RSpec.describe School, type: :model do
  describe "validations" do
    it "is valid with a name and min_admission_score" do
      attrs = {name: "University of Mountains", min_admission_score: 60 }
      school = School.new(attrs)
      expect(school).to be_valid
    end
  end
end
