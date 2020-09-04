module Admin
  class BaseController < ApplicationController
    include Pundit

    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

    layout "dashb