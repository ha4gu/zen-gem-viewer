Faker::Config.locale = :en

FactoryBot.define do
  factory :bitbucket_account do
    username { Faker::Internet.username }
    password { Faker::Internet.password }
    workspace { Faker::Internet.slug }
  end
end

# == Schema Information
#
# Table name: hosting_accounts
#
#  id           :integer          not null, primary key
#  custom_name  :string
#  organization :string
#  password     :string
#  token        :string
#  type         :string           not null
#  username     :string
#  workspace    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
