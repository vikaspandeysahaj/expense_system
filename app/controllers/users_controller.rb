class UsersController < ApplicationController

  def index
    @users = UserService.new().fetch_all_users()
  end

  def show
    @user = UserService.new().find_user_by_id(params[:id])
  end

end
