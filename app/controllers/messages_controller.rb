class MessagesController < ApplicationController
  respond_to :json

  def create
    @bid = Bid.find(params[:bid_