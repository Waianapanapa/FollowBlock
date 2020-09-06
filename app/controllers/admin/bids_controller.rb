
module Admin
  class BidsController < BaseController
    def index
      authorize :admin, :index?
      @bids = Bid.most_recent
    end
  end
end