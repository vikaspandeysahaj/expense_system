class Api::V1::UsersController < Api::V1::BaseController
  
  #/api/v1/users
  def index
    users = UserService.new().fetch_all_users()
	render :json => users, each_serializer: Api::V1::UserSerializer

  end
  
  #/api/v1/users/:id
  def show
    user = UserService.new().find_user_by_id(params[:id])
    render :json => user, serializer: Api::V1::UserSerializer
  end
end