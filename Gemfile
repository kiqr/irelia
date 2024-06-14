source "https://rubygems.org"

RAILS_VERSION = "~> 7.1"

# Specify your gem's dependencies in irelia.gemspec.
gemspec

gem "puma"
gem "rails", RAILS_VERSION
gem "sqlite3", "~> 1.4"
gem "sprockets-rails"
gem "capybara"
gem "listen"
gem "actioncable"

gem "pg", "~> 1.1"

# Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
gem "rubocop-rails-omakase", require: false

# Start debugger with binding.b [https://github.com/ruby/debug]
# gem "debug", ">= 1.0.0"

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
end
