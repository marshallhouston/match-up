require 'rails_helper'

feature "As a logged in user" do
  scenario "when I enter a gpa and sat_score, I see my scorecard with schools" do
    current_user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

    visit new_admission_score_path

    fill_in :admission_score_gpa, with: '3.2'
    fill_in :admission_score_sat_score, with: '1200'
    click_on "MatchUp!"

    expect(current_path).to eq(admission_score_path(AdmissionScore.last))

    expect(page).to have_content("Scorecard")

    within('.admission-index-score') do
      expect(page).to have_content('Your Score')
      expect(page).to have_content('108')
    end

    expect(page).to have_content('Strong Candidate for Admission')
    expect(page).to have_content('Above Average Candidate for Admission')
    expect(page).to have_content('Weak Candidate for Admission')
  end
end
