class MessagesController < ApplicationController
  respond_to :json

  def create
    @bid = Bid.find(params[:bid_id])
    @message = @bid.messages.create(message_params.merge(user: current_user))

    render json: @message
  end

  private

  def message_param