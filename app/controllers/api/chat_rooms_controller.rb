class Api::ChatRoomsController < Api::BaseController
  def index
    respond_with :api, chat_rooms
  end

  def show
    respond_with :api, chat_room
  end

  def create
    respond_with :api, chat_rooms.create(chat_room_params)
  end

  def destroy
    respond_with :api, chat_room.destroy
  end

  private
    def chat_rooms
      @chat_rooms ||= ChatRoom.all
    end

    def chat_room
      @chat_room ||= ChatRoom.find(params[:id])
    end

    def message_params
      params.permit(:name)
    end
end