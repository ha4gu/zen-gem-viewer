source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.2"

gem "bootsnap", require: false
gem "jbuilder", "~> 2.7"
gem "puma", "~> 5.0"
gem "rails", "~> 6.1.2"
gem "rails-i18n"
gem "sass-rails"
gem "sqlite3", "~> 1.4"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 5.0"

group :development do
  gem "annotate"
  gem "listen", "~> 3.3"
  gem "rack-mini-profiler", "~> 2.0"
  gem "rails-erd"
  gem "spring"
  gem "web-console"

  # RuboCop系
  gem "rubocop", require: false
  gem "rubocop-ast", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
  gem "standard", require: false
end

group :development, :test do
  gem "byebug"
  gem "factory_bot_rails"
  gem "faker"
  gem "ffaker"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-rails"
end

group :test do
  gem "shoulda-matchers"
end
