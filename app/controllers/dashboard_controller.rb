class DashboardController < ApplicationController

  before_action :logged_in?, only: :show

  def show
    @admission_score = AdmissionScore.new
    @admission_scores = current_user.admission_scores.latest_scores
  end

end
