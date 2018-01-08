FactoryBot.define do
  factory :school do
    sequence :name do |n|
      "School#{n}"
    end
    min_admission_score { rand(45..146) }
    slug { name.parameterize }
  end
end
