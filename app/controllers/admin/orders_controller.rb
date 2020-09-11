module Admin
  class OrdersController < BaseController
    def index
      authorize :admin, :index?
      @orders = Order.most_recent
    end
  end
end
