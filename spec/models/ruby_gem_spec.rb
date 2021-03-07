require "rails_helper"

RSpec.describe RubyGem, type: :model do
  it { is_expected.to have_many(:gem_versions).class_name("GemVersion").dependent(:destroy) }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:rubygems_org_url) }
  it { is_expected.to validate_presence_of(:latest_version) }
  it { is_expected.to validate_presence_of(:timestamp) }
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
