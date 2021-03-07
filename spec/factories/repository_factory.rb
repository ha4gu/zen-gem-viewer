Faker::Config.locale = :en

FactoryBot.define do
  factory :repository do
    hosting_account
    uuid { Faker::Internet.uuid }
    name { Faker::Internet.slug }
    main_branch { %w[master main].sample }
  end
end

# == Schema Information
#
# Table name: repositories
#
#  id                 :integer          not null, primary key
#  custom_name        :string
#  main_branch        :string           not null
#  name               :string           not null
#  uuid               :string           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  hosting_account_id :integer          not null
#
# Indexes
#
#  index_repositories_on_hosting_account_id  (hosting_account_id)
#
# Foreign Keys
#
#  hosting_account_id  (hosting_account_id => hosting_accounts.id)
#
