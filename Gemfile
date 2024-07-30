source "https://rubygems.org"

RAILS_VERSION = "~> 7.1"

# Specify your gem's dependencies in irelia.gemspec.
gemspec

gem "puma"
gem "rails", RAILS_VERSION
gem "sqlite3", "~> 2.0"
gem "sprockets-rails"
gem "listen"
gem "actioncable"

gem "pg", "~> 1.1"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
gem "rubocop-rails-omakase", require: false

# Start debugger with binding.b [https://github.com/ruby/debug]
# gem "debug", ">= 1.0.0"

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
end
