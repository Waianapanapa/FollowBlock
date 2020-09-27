class MessagesController < ApplicationController
  respond_to :json

  def create
    @bid = Bid.find(params[:bid_id])
    @message = @bid.messages.create(message_params.merge(user: cur