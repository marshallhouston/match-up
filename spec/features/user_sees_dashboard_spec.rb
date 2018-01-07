require 'rails_helper'

feature "As a user, when I login" do
  scenario "I see my dashboard with my scores, analytics, and a new score form" do
    user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit '/dashboard'

    within('.new_score') do
      expect(page).to have_content 'GPA'
      expect(page).to have_content 'SAT Score'
      expect(page).to have_button 'MatchUp!'
    end

    within('.scores') do
      expect(page).to have_content 'Overall'
      expect(page).to have_content 'GPA'
      expect(page).to have_content 'SAT Score'
      expect(page).to have_content 'Date'
    end

  end
end
