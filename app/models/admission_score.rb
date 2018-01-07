class AdmissionScore < ApplicationRecord
  validates :gpa, presence: true, numericality: { less_than_or_equal_to: 4.0 }
  validates :sat_score, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 400, less_than_or_equal_to: 1600 }
  belongs_to :user

  def self.latest_scores
    order(created_at: :desc)
  end

  def strong_schools
    School.where('? >= min_admission_score', (admission_index_score - 10)).order(min_admission_score: :desc)
  end

  def average_schools
    School.where(min_admission_score: (admission_index_score - 10)..admission_index_score).order(:min_admission_score).reverse
  end

  def below_average_schools
    School.where('min_admission_score > ?', admission_index_score).order(:min_admission_score)
  end

end
