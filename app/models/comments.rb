class Comment < ActiveRecord::Base
	belongs_to :memory, class_name: Memory #foreign key - memory_id
end