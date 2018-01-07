class DashboardController < ApplicationController

  before_action :logged_in?, only: :index

  def show
    @admission_score = AdmissionScore.new
    @admission_scores = current_user.admission_scores.latest_scores
  end

end
