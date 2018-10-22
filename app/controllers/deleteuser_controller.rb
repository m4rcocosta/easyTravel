class DeleteuserController < ApplicationController

  def destroy
    @user = User.find(params[:id])
    if @user.destroy 
        redirect_to edit_user_registration_path, notice: "Utente eliminato"
    else
        redirect_to edit_user_registration_path, notice: "Impossibile eliminare l'utente"
    end
  end
end
