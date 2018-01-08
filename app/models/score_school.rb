class ScoreSchool < ApplicationRecord
  belongs_to :admission_score
  belongs_to :school

  enum status: [ 'strong', 'avg', 'below_avg' ]

end
