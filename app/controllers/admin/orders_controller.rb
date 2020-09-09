module Admin
  class OrdersController < BaseController
    def index
      authorize :admin, :index?
     