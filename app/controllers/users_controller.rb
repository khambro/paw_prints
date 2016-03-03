class UsersController < ApplicationController

  def index

  end

  def new_owner

  end

  def owner_create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to "/account"
    else
      redirect_to "/new-owner", notice: "Username or email not complete, or passwords do not match. You tell me!"
    end
  end

  def sitter_create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to "/account"
    else
      redirect_to "/new-sitter", notice: "Username or email not complete, or passwords do not match. You tell me!"
    end
  end

  def new_sitter

  end

  def sign_in

  end

  def account

  end



  private

  def user_params
    params.require(:user).permit(:email, :password, :username, :name, :role, :current_city, :password_confirmation)
  end

end
