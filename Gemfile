
source "https://rubygems.org"

ruby "2.2.2"

gem "rails", "4.2.3"

gem "active_model_serializers", "~> 0.10.0.rc2"
gem "autoprefixer-rails"
gem "bootstrap-sass", "~> 3.3.5.1"
gem "cpf_validator", "~> 0.2.1"
gem "cnpj_validator", "~> 0.3.2"
gem "devise", "~> 3.5.1"
gem "enumerize", "~> 1.0"
gem "jquery-rails"
gem "pg", "~> 0.18.1"
gem "pundit", "~> 1.0.1"
gem "rack-timeout", "~> 0.2.1"
gem "sass-rails", "~> 5.0"
gem "simple_form", "~> 3.1.0"
gem "uglifier", ">= 1.3.0"

source "https://rails-assets.org" do
  gem "rails-assets-almond"
  gem "rails-assets-handlebars"
  gem "rails-assets-lodash"
end

group :production do
  gem "rails_12factor"
  gem "unicorn", "~> 4.9.0"
end

group :development do
  gem "thin"
end

group :development, :test do
  gem "dotenv-rails", "~> 2.0.0"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.3.2"
  gem "web-console", "~> 2.0"
end

group :test do
  gem "capybara", "~> 2.4.4"
  gem "database_cleaner", "~> 1.4.1"
  gem "poltergeist", "~> 1.6.0"
  gem "factory_girl_rails", "~> 4.5.0"
  gem "shoulda-matchers", "~> 2.8.0"
end