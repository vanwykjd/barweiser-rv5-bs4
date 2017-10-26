class DashboardController < ApplicationController
  
  def show
    if current_user
      @user = User.find(current_user.id)
      @account = Account.find(@user.account_id)
      @dashboard = Dashboard.find(@account.id)
      @plan = Plan.find(@account.plan_id)
    end
    
    if current_account
      @account = Account.find(current_account.id)
      @dashboard = Dashboard.find(@account.id)
      @plan = Plan.find(@account.plan_id)
    end
    
		unless current_user || current_account
    		flash[:alert] = "You must be signed in to access the dashboard."
    		redirect_to new_user_session_path
		end
	end
  
end
