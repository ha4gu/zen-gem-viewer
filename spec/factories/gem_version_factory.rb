FactoryBot.define do
  factory :gem_version do
    lock_file
    ruby_gem
    version { Faker::App.semantic_version }
  end
end

# == Schema Information
#
# Table name: gem_versions
#
#  id           :integer          not null, primary key
#  version      :text             not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  lock_file_id :integer          not null
#  ruby_gem_id  :integer          not null
#
# Indexes
#
#  index_gem_versions_on_lock_file_id  (lock_file_id)
#  index_gem_versions_on_ruby_gem_id   (ruby_gem_id)
#
# Foreign Keys
#
#  lock_file_id  (lock_file_id => lock_files.id)
#  ruby_gem_id   (ruby_gem_id => ruby_gems.id)
#
