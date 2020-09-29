
class OrdersController < ApplicationController
  layout "dashboard"

  def index
    @orders = current_user.orders.most_recent
  end

  def new
    @bid = Bid.find(params[:bid_id])
    @order = current_user.orders.build
  end

  def create
    @bid = Bid.find(params[:bid_id])
    @order = current_user.orders.build(bid: @bid)