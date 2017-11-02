class PaymentsController < ApplicationController
  before_action :amount_to_be_charged
  before_action :description
  before_action :set_plan


  def new
  end

  def create
    if params[:subscription].include? 'yes'
      StripeTool.create_subscription(email: params[:stripeEmail], 
                                     stripe_token: params[:stripeToken],
                                     plan: @plan)
    else
      customer = StripeTool.create_account(email: params[:stripeEmail], 
                                           stripe_token: params[:stripeToken])
      
      charge = StripeTool.create_payment(customer_id: customer.id, 
                                         amount: @amount,
                                         description: @description)
    end

      redirect_to thanks_path
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_payment_path
  end
  
    
  def thanks
  end
  
  private

    def amount_to_be_charged
      @amount = 500
    end
  
     def description
      @description = "Some amazing product"
    end
  

    def set_plan
      @plan = 9999
    end
  
end
