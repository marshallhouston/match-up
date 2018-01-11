class Api::V1::AdmissionScoresController < ApplicationController

  def index
    current_user = User.find_by(id: request.headers["user-id"]) || User.find_by(id: session[:user_id])

    admission_scores = AdmissionScore.where(user_id: current_user.id).order(created_at: :desc).limit(5)
    render json: admission_scores
  end

end
