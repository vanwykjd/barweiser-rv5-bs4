class DashboardController < ApplicationController
  before_action :authenticate_company_account!
  
  def show
  end
  
end
