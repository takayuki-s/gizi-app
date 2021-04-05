class MessagesController < ApplicationController
  def index
    @rooms = Room.all
    @message = Message.new
    @room = Room.find(params[:room_id])
    @messages = @room.messages.includes(:user)
  end

  def create
    @rooms = Room.all
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)
    @messages = Message.all
    # @messages = @room.messages.includes(:user)
    if @message.save
      # redirect_to room_messages_path(@room)
    else
      @messages = @room.messages.includes(:user)
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end

end
