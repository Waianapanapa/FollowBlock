if Rails.env.development?
  # Define settings for mailcatcher
  ActionMailer::Base.tap do |action_mailer|
    