class PetsController < ApplicationController

  def new
  end

  def report
    @pet = Pet.find_by(id: params[:id])
  end

  def create
    @pet = Pet.new(pet_params)

    if @pet.save
      redirect_to "/account/#{@current_user.id}"
    else
      redirect_to "/new-owner", notice: "Username or email not complete, or passwords do not match. You tell me!"
    end
  end



  def show
    @pet = Pet.find_by(id: params[:id])
    @sitter_ids = []
    @pet.sitter_records.each do |r|
      @sitter_ids << r.sitter_id
    end
  end

  def profile
    @pet = Pet.find_by(id: params[:id])
  end


  private

  def pet_params
    params.require(:pet).permit(:owner_id, :name, :breed, :color, :sitter_id)
  end


end
