require 'rails_helper'

describe "GET '/api/v1/admission_scores' " do
  it "returns admission_scores for a user as JSON" do
    user = create(:user)
    create_list(:admission_score, 3, user: user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    get '/api/v1/admission_scores'

    admission_scores = JSON.parse(response.body, symbolize_names: true)
    admission_score = admission_scores.first

    expect(response).to be_success
    expect(admission_scores.count).to eq 3
    expect(admission_score).to have_key(:gpa)
    expect(admission_score).to have_key(:sat_score)
    expect(admission_score).to have_key(:created_at)
  end

end
