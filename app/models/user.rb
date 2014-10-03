class User < ActiveRecord::Base
	has_many :order
	belongs_to :usertype
end
