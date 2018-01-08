require 'rails_helper'

feature "As a user with an admission score" do
  scenario "I see all the schools that I am a strong candidate for" do
    user = create(:user)
    admission_score = create(:admission_score, gpa: 2.9, sat_score: 1130, admission_index_score: 99, user: user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    school1 = create(:school, min_admission_score: 88)
    school2 = create(:school, min_admission_score: 78)
    school3 = create(:school, min_admission_score: 95)
    create(:score_school, admission_score: admission_score, school: school1, status: 0)
    create(:score_school, admission_score: admission_score, school: school2, status: 0)
    create(:score_school, admission_score: admission_score, school: school3, status: 1)

    visit admission_score_path(admission_score)

    within('.strong_schools') do
      click_on "View All"
    end

    expect(current_path).to eq("/admission_scores/#{admission_score.id}/schools")

    expect(page).to have_content("Your Score 99")

    within('.schools') do
      expect(page).to have_content(school1.name)
      expect(page).to have_content(school2.name)
      expect(page).to_not have_content(school3.name)
    end
  end
end
