FactoryBot.define do
  factory :admission_score do
    gpa 2.3
    sat_score 1200
    admission_index_score 92
    created_at { Time.now }
    updated_at { Time.now }
    user
  end
end
