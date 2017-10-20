class Account < ApplicationRecord
  has_many :users, dependent: :destroy
 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :confirmable, :validatable
  
  def after_confirmation
    Dashboard.create!(:account_id => self.id)
  end
  
end
