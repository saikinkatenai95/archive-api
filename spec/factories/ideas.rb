FactoryBot.define do
  factory :idea do
    body          {Faker::Name.initials(number: 4)
    association :categorie
  end
end
