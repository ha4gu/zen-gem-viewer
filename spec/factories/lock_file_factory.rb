FactoryBot.define do
  factory :lock_file do
    repository
    path { "Gemfile" }
  end
end
