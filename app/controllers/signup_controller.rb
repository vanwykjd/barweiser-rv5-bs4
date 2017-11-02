class SignupController < ApplicationController
  require 'json'
  
  def new
  end
  
  def create
  end
  
  def planform
    @plans = Stripe::Plan.all
  end
  
  def registration
    if params[:plan]
      @plan_selected = params[:plan]
    end
  end
  
  def register
      @plan_selected = params[:plan]
      @plan = Stripe::Plan.retrieve(@plan_selected)
      @email = params[:email]
      @password = params[:password]
      @password_confirmation = params[:password_confirmation]
      @company_name = params[:description]    
  end
  
  
  def generate_subscrtion
  
  end
  
end
