class HomeController < ApplicationController
  def index
    @message = Message.new
    @updates = Update.last_20
  end
end
