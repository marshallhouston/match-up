require 'rails_helper'

feature "As a guest, when I visit '/schools'" do
  feature "and I click on a school name" do
    scenario "I see school info" do
      school = create(:school, name: "Adams State University", min_admission_score: 80)

      visit schools_path

      click_on "#{school.name}"

      expect(current_path).to eq("/adams-state-university")

      expect(page).to have_content "Adams State University"
      expect(page).to have_content "80"
    end
  end
end
