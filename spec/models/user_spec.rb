require 'rails_helper'

RSpec.describe User, type: :model do
  describe "associations" do
    it "has many admission_scores" do
      user = create(:user)

      expect(user).to respond_to(:admission_scores)
    end
  end
end
