class ChatroomsController < ApplicationController
after_action :skip_authorization

  def show
    # authorize @chatroom
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
