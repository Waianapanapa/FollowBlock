if Rails.env.development?
  # Define settings for mailcatcher
  ActionMailer::Base.tap do |action_mailer|
    action_mailer.default_url_options = { host: "localhost", port: (ENV["PORT"] || 3000).to_i }
    action_mailer.delivery_method = :smtp
    action_mailer.perform_deliveries = true
    action_mailer.raise_delivery_errors = false
    action_mailer.smtp_settings = { address: "localhost", port: 1025 }
  end
end
