class ChatroomController < ApplicationController
  before_action :require_user

  def new
  end

  def index
    @messages = Message.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
