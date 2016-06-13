class Comment < ActiveRecord::Base
	belongs_to :memory, class_name: Memory #foreign key - memory_id
	# belongs_to :user, class_name: User
	# validates_presence_of :name, :content, :message => "Can't be blank"
end