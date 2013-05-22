class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  belongs_to :merchant
  attr_accessible :quantity

  def total_cost
  	product.price * quantity
  end

end
