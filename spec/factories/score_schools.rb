FactoryBot.define do
  factory :score_school do
    admission_score
    school
    status { rand(0..2) }
  end
end
