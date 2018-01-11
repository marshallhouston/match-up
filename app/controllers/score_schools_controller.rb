class ScoreSchoolsController < ApplicationController

  before_action :logged_in?, only: :index

  def index
    @status = status_display[school_score_params[:status]]
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

    def status_display
      base_status = Hash.new("an average")
      valid_status = {"avg" => "an average", "below_avg" => "a below average", "strong" => "a strong"}
      base_status.merge(valid_status)
    end


end
