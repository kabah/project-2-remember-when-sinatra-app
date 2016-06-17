class Comment < ActiveRecord::Base
	belongs_to :memory, class_name: Memory #foreign key - memory_id
	validates_presence_of :name, :content, :message => "Can't be blank"
	# belongs_to :user, class_name: User
end