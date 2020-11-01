module BootstrapFlashHelper
  ALERT_TYPES = [:success, :info, :warning, :danger] unless const_defined?(:ALERT_TYPES)

  def bootstrap_flash(options = {})
    flash_messages = []

    flash.each do |type, message|
      # Skip empty messages, e.g. for devise messag