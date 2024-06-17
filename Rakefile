require "bundler/setup"

APP_RAKEFILE = File.expand_path("test/dummy/Rakefile", __dir__)

load "rails/tasks/engine.rake"
load "rails/tasks/statistics.rake"
require "bundler/gem_tasks"

require_relative "test/dummy/config/application"

Rails.application.load_tasks
Rake::Task["default"].clear

namespace :lint do
  task :rubocop do
    sh "bundle exec rubocop"
  end
end

task :default do
  Rake::Task["test"].invoke
  Rake::Task["test:system"].invoke
  Rake::Task["lint:rubocop"].invoke
end
