class DashboardController < ApplicationController
   before_action :authenticate_company_account!, except: [:show]
   before_action :authenticate_user!, except: [:show]

  
  def show
    
  end
  
end
