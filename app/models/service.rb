class Service < ApplicationRecord
   belongs_to :plans, optional: true
  
end
