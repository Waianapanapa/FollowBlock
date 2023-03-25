require "capybara/rails"
require "capybara/rspec"
require "capybara/poltergeist"

Capybara.configure do |config|
  config.always_include_port = true
  config.default_driver = :poltergeist
  config.javascript_driver = :poltergeist
end
