class RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  protected