FactoryBot.define do
  factory :school do
    sequence :name do |n|
      "School#{n}"
    end
    min_admission_score { [45..146].sample}
  end
end
