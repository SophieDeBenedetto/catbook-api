class UsersController < ApplicationController

  def create
    user = User.new(user_params)
    if user.save
      jwt = Auth.issue({user: user.id})
      render json: {jwt: jwt}
    else
      render json: {error: "can't save user"}, status: 500
    end
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end