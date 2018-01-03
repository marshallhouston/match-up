class AdmissionScore < ApplicationRecord
  validates :gpa, presence: true, numericality: { less_than_or_equal_to: 4.0 }
  validates :sat_score, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 400, less_than_or_equal_to: 1600 }

  before_save :calculate_admission_index_score

  def calculate_admission_index_score
    self.admission_index_score = ScoreCalculatorService.score(gpa, sat_score)
  end

end
