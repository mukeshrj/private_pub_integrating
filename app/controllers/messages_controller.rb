class MessagesController < ApplicationController
  def index
    sended_message = current_user.sended_messages
    recived_message = current_user.recived_messages
    @messages = []
    @messages = sended_message + recived_message

  end

  def create
    @message = Message.create!(message_params)
  end

  private
    def message_params
      params.require(:message).permit(:content, :sender_id, :reciver_id)
    end
end
