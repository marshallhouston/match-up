require 'rails_helper'

feature "As a guest, when I visit the root path" do
  scenario "I can input my gpa and sat score and see my Colorado Admissions Index Score" do
    visit '/'
    fill_in :admission_score_gpa, with: '3.2'
    fill_in :admission_score_sat_score, with: '1200'
    click_on "MatchUp!"

    expect(page).to have_content "Colorado Admissions Index Score"

    within('.score') do
      expect(page).to have_content "108"
    end
  end
end
