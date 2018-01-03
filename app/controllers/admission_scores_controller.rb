class AdmissionScoresController < ApplicationController

  def show
    @admission_score = AdmissionScore.find(params[:id])
  end

  def new
    @admission_score = AdmissionScore.new
  end

  def create
    admission_score = AdmissionScore.new(admission_score_params)
    if admission_score.save
      redirect_to admission_score_path(admission_score)
    else
      redirect_to new_admission_score_path
    end
  end

  private

    def admission_score_params
      params.require(:admission_score).permit(:id, :gpa, :sat_score)
    end
end
