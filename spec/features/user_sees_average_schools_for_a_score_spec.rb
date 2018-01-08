require 'rails_helper'

feature "As a user with an admission score" do
  scenario "I see all the schools that I am an average candidate for" do
    user = create(:user)
    admission_score = create(:admission_score, gpa: 1.7, sat_score: 1450, admission_index_score: 95, user: user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    school1 = create(:school, min_admission_score: 96)
    school2 = create(:school, min_admission_score: 88)
    school3 = create(:school, min_admission_score: 130)
    create(:score_school, admission_score: admission_score, school: school1, status: 2)
    create(:score_school, admission_score: admission_score, school: school2, status: 1)
    create(:score_school, admission_score: admission_score, school: school3, status: 2)

    visit admission_score_path(admission_score)

    within('.average_schools') do
      click_on "View All"
    end

    expect(current_path).to eq("/admission_scores/#{admission_score.id}/schools")

    expect(page).to have_content("Your Score 95")

    within('.schools') do
      expect(page).to have_content(school2.name)
      expect(page).to_not have_content(school1.name)
      expect(page).to_not have_content(school3.name)
    end
  end
end
