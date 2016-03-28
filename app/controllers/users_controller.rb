class UsersController < ApplicationController
  attr_accessor :bio

  def index

  end

  def new_client
    @user = User.new(user_params)
    if @user.save
      @role = Role.new(role: (params[:role][:role]), user_id: @user.id)
      @role.save
      @pet =  Pet.new(name: params[:pet][:name], owner_id: @user.id)
      @pet.save
      @sitter_record = SitterRecord.new(pet_id: @pet.id, owner_id: @user_id, sitter_id: @current_user.id)
      @sitter_record.save
      redirect_to "/account/#{@current_user.id}"
    else
      redirect_to "/new-owner", notice: "New client did not save"
    end
  end

  def owner_create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      @role = Role.new(role: (params[:role][:role]), user_id: @user.id)
      @role.save
      redirect_to "/new-pet"
    else
      redirect_to "/new-owner", notice: "Username or email not complete, or passwords do not match."
    end
  end

  def sitter_create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      @role = Role.new(role: (params[:role][:role]), user_id: @user.id)
      @role.save
      redirect_to "/sitter-profile/#{@user.id}"
    else
      redirect_to "/new-sitter", notice: "Username or email not complete, or passwords do not match."
    end
  end

  def new_sitter
  end

  def account
    @pets = Pet.where(owner_id: @current_user.id)
    @clients = SitterRecord.where(sitter_id: @current_user.id)
    @sitter_records = SitterRecord.where(owner_id: @current_user.id)
    @my_sitters = []
    @sitter_records.each do |s|
      @my_sitters << s unless @my_sitters.include?(s.sitter_id)
    end
  end

  def sitter_profile
    @sitter = User.find(params[:id])
  end

  def update_sitter_profile
    @update = User.find(params[:id])
    @update.bio = params[:user][:bio]
    @update.picture = params[:user][:picture]
    @update.save
    if @update.save
      redirect_to "/account/#{@current_user.id}"
    else
      redirect_to "/sitter-profile/#{@current_user.id}/edit", notice: "Update not saved."
    end
  end

  def edit_sitter
    @sitter = User.find(params[:id])
  end

  def sitters
    @sitters = Role.where(role: "sitter")
  end

  def select_sitter
    @pets = Pet.where(owner_id: @current_user.id)
    @sitter = User.find(params[:id])
    @pets.each do |p|
      SitterRecord.create(sitter_id: @sitter.id, owner_id: @current_user.id, pet_id: p.id)
    end
    redirect_to "/account/#{@current_user.id}"
  end



  private

  def user_params
    params.require(:user).permit(:bio, :email, :password, :phone, :username, :name, :role, :current_city, :password_confirmation, :picture)
  end

end
