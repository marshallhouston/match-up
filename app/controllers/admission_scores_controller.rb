class AdmissionScoresController < ApplicationController
  before_action :logged_in?, only: [:index, :show]

  def index
    @admission_scores = current_user.admission_scores.latest_scores
  end

  def show
    @admission_score = current_user.admission_scores.find(params[:id])
  end

  def new
    @admission_score = AdmissionScore.new
  end

  def create
    if AdmissionScoreCreator.new(current_user, admission_score_params).call
      redirect_to admission_score_path(current_user.admission_scores.last)
    else
      redirect_to new_admission_score_path
    end
  end

  private

    def admission_score_params
      params.require(:admission_score).permit(:id, :gpa, :sat_score)
    end
end
