class HostingAccount < ApplicationRecord
  has_many :repositories, class_name: "Repository", dependent: :destroy

  validates :type, presence: true
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
