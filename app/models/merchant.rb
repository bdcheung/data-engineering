class Merchant < ActiveRecord::Base
	has_many :products
	has_many :orders
	attr_accessible :name, :address
end
