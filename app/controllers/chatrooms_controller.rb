class ChatroomsController < ApplicationController
after_action :skip_authorization

  def show
    # authorize @chatroom
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @chatrooms_all = policy_scope(Chatroom)
    @chatrooms = Chatroom.where(user: current_user).or(Chatroom.where(user_two: current_user))
  end

  def create
    @incident = Incident.find(params[:incident_id])
    @user = @incident.user
    @user_two = current_user
    @chatroom = Chatroom.create(user: @user, user_two: @user_two, name: "#{@user.nickname}-#{@user_two.nickname}", incident: @incident)
    redirect_to chatroom_path(@chatroom)
  end

  def index
    @incident = Incident.find(params[:incident_id])
    @user = @incident.user
    @chatrooms_all = policy_scope(Chatroom)
    @chatrooms = @chatrooms_all.where(user: @user)
  end
end
