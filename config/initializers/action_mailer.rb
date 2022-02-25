if Rails.env.development?
  # Define settings for mailcatcher
  ActionMailer::Base.tap do |action_mailer|
    action_mailer.default_url_options = { host: "localhost", port: (ENV["PORT"] || 3