class Memory < ActiveRecord::Base
	# belongs_to :user, class_name: User
	has_many :comments, dependent: :destroy
end