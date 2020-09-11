
module Admin
  class UsersController < BaseController
    def index
      authorize :admin, :index?
      @users = User.order(:id)
    end
  end
end