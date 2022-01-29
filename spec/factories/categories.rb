FactoryBot.define do
  factory :categorie do
    name          {Faker::Name.initials(number: 4)}
  end
end
