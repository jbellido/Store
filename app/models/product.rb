class Product < ActiveRecord::Base
	belongs_to :color
	belongs_to :size
	belongs_to :neck
	belongs_to :sleeve
	belongs_to :material
	has_many :orderdetail
end
