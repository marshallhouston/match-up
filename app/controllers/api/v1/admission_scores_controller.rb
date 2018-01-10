class Api::V1::AdmissionScoresController < Api::V1::BaseController

  def index
    if current_user
      admission_scores = current_user.admission_scores
      render json: admission_scores
    else
      render json: "User must be logged in to see scores."
    end
  end

end
