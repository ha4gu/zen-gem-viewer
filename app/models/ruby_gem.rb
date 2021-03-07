class RubyGem < ApplicationRecord
  validates :name, :rubygems_org_url, :latest_version, :timestamp, presence: true
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
