FactoryBot.define do
  factory :school do
    sequence :name { |n| "School#{n}"}
    min_admission_score { [45..146].sample}
  end
end
