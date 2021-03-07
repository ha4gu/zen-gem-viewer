Faker::Config.locale = :en

FactoryBot.define do
  factory :ruby_gem do
    name { Faker::Lorem.words(number: (1..3).to_a.sample, supplemental: true).join(%w[_ -].sample) }
    rubygems_org_url { "https://rubygems.org/gems/#{name}" }
    latest_version { Faker::App.semantic_version }
    timestamp { Faker::Time.backward }
  end
end

# == Schema Information
#
# Table name: ruby_gems
#
#  id               :integer          not null, primary key
#  latest_version   :text             not null
#  name             :text             not null
#  official_url     :text
#  rubygems_org_url :text             not null
#  source_code_url  :text
#  timestamp        :datetime         not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
