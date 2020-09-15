class BidsController < ApplicationController
  layout "dashboard"

  def available
    @bids = Bid.most_recent
               .where.not(user: current_user)
               .where.not(id: Order.where(user: 