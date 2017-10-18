class DashboardController < ApplicationController
  before_action :authenticate_company_account!
  before_action :authenticate_user!
  
  def show
    @user = User.find(params[:id])
  end
  
end
