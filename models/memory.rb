class Memory < ActiveRecord::Base
	# belongs_to :user, class_name: User
	has_many :comments, dependent: :destroy
	validates_presence_of :name, :title, :content, :message => "Can't be blank"
end