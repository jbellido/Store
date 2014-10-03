class Orderdetail < ActiveRecord::Base
	belongs_to :order
	belongs_to :design
	belongs_to :product
end
