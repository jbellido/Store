class Design < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	has_many :orderdetail
	has_many :ranking
end
