class BidsController < ApplicationController
  layout "dashboard"

  def available
    @bids = Bid.most_recent
               .where.not(user: current_user)
               .where.not(id: Order.where(user: current_user).pluck(:id))
               .reject { |bid| bid.created_at + bid.number_of_days.days > Time.zone.now }
  end

  def index
    @bids = current_user.bids.most_recent
  end

  def new
    @bid = current_user.bids.build
  end

  def create
    @bid = current_user.bids.build(bid_params)

    if @bid.save
      redir