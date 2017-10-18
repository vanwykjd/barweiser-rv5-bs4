class GuestController < ApplicationController

  
  def index
     redirect_to dashboard_show_path(current_user) if current_user
  end
  
end
