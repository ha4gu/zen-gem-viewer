require "rails_helper"

RSpec.describe LockFile, type: :model do
  it { is_expected.to belong_to(:repository) }

  it { is_expected.to validate_presence_of(:path) }
end

# == Schema Information
#
# Table name: lock_files
#
#  id            :integer          not null, primary key
#  content       :text
#  custom_name   :string
#  path          :string           not null
#  timestamp     :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  repository_id :integer          not null
#
# Indexes
#
#  index_lock_files_on_repository_id  (repository_id)
#
# Foreign Keys
#
#  repository_id  (repository_id => repositories.id)
#
