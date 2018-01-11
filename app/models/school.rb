class School < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :min_admission_score, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 45, less_than_or_equal_to: 146 }
  has_many :score_schools
  has_many :admission_scores, through: :score_schools

  def self.filter_by(status)
    valid_statuses = ["avg", "below_avg", "strong"]
    status = "avg" unless valid_statuses.include?(status)

    where(score_schools: {status: status}).order(min_admission_score: :desc)
  end

end
