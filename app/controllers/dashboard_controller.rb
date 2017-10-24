class DashboardController < ApplicationController
  
  def show
    @user = User.find(current_user.id)
    @account = Account.find(@user.account_id)
    @dashboard = Dashboard.find(@account.id)
    @plan = Plan.find(@account.plan_id)

    
		unless current_user
    		flash[:alert] = "You must be signed in to access the dashboard."
    		redirect_to new_user_session_path
		end
	end
  
end
