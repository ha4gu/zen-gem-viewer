class Repository < ApplicationRecord
  belongs_to :hosting_account
  has_many :lock_files, class_name: "LockFile", dependent: :destroy

  validates :uuid, :name, :main_branch, presence: true
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
