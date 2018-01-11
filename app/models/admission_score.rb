class AdmissionScore < ApplicationRecord
  validates :gpa, presence: true, numericality: { less_than_or_equal_to: 4.0 }
  validates :sat_score, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 400, less_than_or_equal_to: 1600 }
  belongs_to :user
  has_many :score_schools
  has_many :schools, through: :score_schools

  def self.latest_scores
    order(created_at: :desc)
  end

  def strong_schools
    schools.where(score_schools: {status: 'strong'} ).order(min_admission_score: :desc)
  end

  def average_schools
    schools.where(score_schools: {status: 'avg'} ).order(min_admission_score: :desc)
  end

  def below_average_schools
    schools.where(score_schools: {status: 'below_avg'} )
  end

end
