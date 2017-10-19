class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_account!
  
  def show
    @dashboard = User.find(params[:account_id])
  end
  
end
