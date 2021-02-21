Faker::Config.locale = :en

FactoryBot.define do
  factory :bitbucket_account do
    username { Faker::Internet.username }
    password { Faker::Internet.password }
    workspace { Faker::Internet.slug }
  end
end
