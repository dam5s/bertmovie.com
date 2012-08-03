class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    Message.new(params).send!
    flash[:notice] = 'Message Sent!'
    redirect_to action: 'new'
  end
end
