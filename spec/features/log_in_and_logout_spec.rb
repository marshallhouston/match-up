require 'rails_helper'

feature "As a guest" do
  scenario "I can login using google account information and then logout" do
    visit root_path
    stub_omniauth

    click_on "Login"

    expect(page).to have_link("Logout")

    click_on "Logout"

    expect(page).to have_link("Login")
    expect(page).to_not have_link("Logout")
  end
end
