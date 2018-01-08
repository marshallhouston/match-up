class ScoreSchoolsController < ApplicationController

  before_action :logged_in?, only: :index

  def index
    @status = school_score_params[:status]
    @admission_score = admission_score
    @schools = admission_score.schools.filter_by(school_score_params[:status])
  end

  private

    def admission_score
      @admission_score ||= current_user.admission_scores.find(school_score_params[:admission_score_id])
    end

    def school_score_params
      params.permit(:status, :admission_score_id)
    end
end
