class GuestController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]
  
  def index
     redirect_to dashboard_path(current_user) if current_user
  end
end
