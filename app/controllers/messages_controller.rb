class MessagesController < ApplicationController
before_action :require_user

  def create
    # Build - The association between the logged in user and the message will be generated automatically
    message = current_user.messages.build(message_params)
    if message.save # If a message is saved, use Action Cable to broadcast the message via the "chatroom_channel" server
      ActionCable.server.broadcast "chatroom_channel", {mod_message: message_render(message)}
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end

  def message_render(message)
    render(partial: 'message', locals: {message: message})
  end

end
