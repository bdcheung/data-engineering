class Product < ActiveRecord::Base
	belongs_to :merchants
	has_many :orders
	has_many :users, :through => :orders
	attr_accessible :description, :price
end
