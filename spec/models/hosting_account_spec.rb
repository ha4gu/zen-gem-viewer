require "rails_helper"

RSpec.describe HostingAccount, type: :model do
  it { is_expected.to have_many(:repositories).class_name("Repository").dependent(:destroy) }

  it { is_expected.to validate_presence_of(:type) }
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
