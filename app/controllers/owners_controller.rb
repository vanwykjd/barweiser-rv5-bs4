class OwnersController < ApplicationController
  before_action :authenticate_owner!
  
  def show
    	@owner = Owner.find(params[:id] || current_owner)
      unless @owner == current_owner
        redirect_to new_owner_session_path, :alert => "You are not signed in."
      end
  end

end
