class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  belongs_to :merchant
  attr_accessible :quantity, :product, :merchant, :user

  def total_revenue
  	product.price * quantity
  end

end
