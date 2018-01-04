require 'rails_helper'

feature "As a guest, when I visit '/schools'" do
  scenario "I see all schools with the minimum admission score for each school" do
    school_1 = create(:school, min_admission_score: 85)
    create(:school, min_admission_score: 87)

    visit '/schools'

    expect(page).to have_css('.school', count: 2)

    within first('.school') do
      expect(page).to have_content(school_1.name)
      expect(page).to have_content(school_1.min_admission_score)
    end
  end
end
