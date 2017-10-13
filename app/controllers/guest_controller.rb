class GuestController < ApplicationController
  def index
     redirect_to owner_path(current_owner) if current_owner
  end
end
