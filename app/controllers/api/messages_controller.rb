class Api::MessagesController < Api::BaseController
  def index
    respond_with :api, messages
  end

  def show
    respond_with :api, message
  end

  def create
    respond_with :api, messages.create(message_params)
  end

  def destroy
    respond_with :api, message.destroy
  end

  private
    def messages
      @messages ||= Message.all
    end

    def message
      @message ||= Message.find(params[:id])
    end

    def message_params
      params.permit(:chat_room_id, :body, :user_id)
    end
end