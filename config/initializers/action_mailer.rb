if Rails.env.development?
  # Define settings for mailcatcher
  ActionMailer::Base.tap do |action_mailer|
    action_mailer.default_url_options = { host: "localhost", port: (ENV["PORT"] || 3000).to_i }
    action_mailer.delivery_method = :smtp
    action_mailer.perform_del