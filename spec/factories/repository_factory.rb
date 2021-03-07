Faker::Config.locale = :en

FactoryBot.define do
  factory :repository do
    hosting_account
    uuid { Faker::Internet.uuid }
    name { Faker::Internet.slug }
  end
end
