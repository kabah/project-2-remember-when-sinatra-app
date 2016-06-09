class Comment < ActiveRecord::Base
	belongs_to :memory, class_name: Memory #foreign key - memory_id
	# belongs_to :user, class_name: User
end