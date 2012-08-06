class UpdatesController < ApplicationController
  before_filter :authenticate

  # GET /updates
  def index
    @updates = Update.all
  end

  # GET /updates/1
  def show
    @update = Update.find(params[:id])
  end

  # GET /updates/new
  def new
    @update = Update.new
  end

  # GET /updates/1/edit
  def edit
    @update = Update.find(params[:id])
  end

  # POST /updates
  def create
    @update = Update.new(params[:update])

    if @update.save
      redirect_to @update, notice: 'Update was successfully created.'
    else
      render action: 'new'
    end
  end

  # PUT /updates/1
  def update
    @update = Update.find(params[:id])

    if @update.update_attributes(params[:update])
      redirect_to @update, notice: 'Update was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /updates/1
  def destroy
    @update = Update.find(params[:id])
    @update.destroy

    redirect_to updates_url
  end

  private

  def authenticate
    authenticate_or_request_with_http_basic do |login, password|
      login == AUTH_CONFIG['login'] && password == AUTH_CONFIG['password']
    end
  end
end
