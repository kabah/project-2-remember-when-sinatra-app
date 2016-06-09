class User < ActiveRecord::Base
	has_many :memories, dependent: :destroy
	has_many :comments, dependent: :destroy
end
