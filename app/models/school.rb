class School < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :min_admission_score, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 45, less_than_or_equal_to: 146 }
  has_many :score_schools
  has_many :admission_scores, through: :score_schools

  def self.filter_by(status)
    where(score_schools: {status: status})
  end

end
