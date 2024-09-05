class MessagesController < ApplicationController
before_action :require_user

  def create
    # Build - The association between the logged in user and the message will be generated automatically
    message = current_user.messages.build(message_params)
    if message.save
      redirect_to root_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end

end
