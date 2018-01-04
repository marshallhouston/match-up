class School < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :min_admission_score, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 45, less_than_or_equal_to: 146 }
end
