module Admin
  class BaseController < ApplicationController
    include Pundit

    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

    layout "dashboard"

    after_action :verify_authorized

    private

    def user_not_authorized
      flash[:alert] = "Você não está autorizado a realizar esta ação."
      redirect_to(request.referrer || root_path)
    end
  end
end
