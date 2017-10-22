class DashboardController < ApplicationController
  
  def show
		@dashboard = current_user.account_id
		
		unless current_user
    		flash[:alert] = "You must be signed in to access the dashboard."
    		redirect_to new_user_session_path
		end
	end
  
end
