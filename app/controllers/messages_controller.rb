class MessagesController < ApplicationController
  def index
    @messages = Message.all
    @message = Message.new
  end

  def create
    @message = Message.create(message_params)
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
