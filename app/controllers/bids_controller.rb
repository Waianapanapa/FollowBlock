class BidsController < ApplicationController
  layout "dashboard"

  def available
    @bids = Bid.most_recent
               .where.not(us