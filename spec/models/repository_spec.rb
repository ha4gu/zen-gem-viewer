require "rails_helper"

RSpec.describe Repository, type: :model do
  it { is_expected.to belong_to(:hosting_account) }
  it { is_expected.to have_many(:lock_files).class_name("LockFile").dependent(:destroy) }

  it { is_expected.to validate_presence_of(:uuid) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:main_branch) }
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
