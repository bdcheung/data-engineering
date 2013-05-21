class Product < ActiveRecord::Base
	has_many :orders
	attr_accessible :product_name, :price
end
