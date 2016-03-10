class UnregisteredController < ApplicationController

  def new

  end

  def unregistered_client_create
    @owner = Unregistered.new(unregistered_params)
    @owner.save
    if @owner.save
      @pet = Pet.new(name: (params[:pet][:name]), unregistered_id: @owner.id, sitter_id: @current_user.id)
      @pet.save
      @role = Role.new(role: (params[:role][:role]), user_id: @owner.id)
      @role.save
      redirect_to "/account"
    else
      redirect_to "/account", notice: "Client not saved"
    end
  end


  private

  def unregistered_params
    params.require(:unregistered).permit(:email, :phone, :name)
  end
end
