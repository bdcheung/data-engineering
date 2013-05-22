class User < ActiveRecord::Base
	has_many :orders
	has_many :products, :through => :orders
	attr_accessible :name
end
