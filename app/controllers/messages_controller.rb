class MessagesController < ApplicationController
  def create
    Message.new(params[:message]).send!
    flash[:notice] = 'Message Sent!'
    redirect_to root_path
  end
end
