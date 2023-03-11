ENV["RAILS_ENV"] ||= "test"

require File.expand_path("../../config/environment", __FILE__)

require "spec_helper"
require "rspec/rails"

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| r