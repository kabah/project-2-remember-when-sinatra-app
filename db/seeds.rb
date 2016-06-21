require_relative "../models/memory"
require 'faker'

Memory.destroy_all

10.times do 
	m = Memory.new
	m.name = Faker::Name.first_name
	m.title = Faker::Lorem.sentence
	m.content = Faker::Lorem.paragraph(8)
	m.created_at =Faker::Time.forward(365, :all)

	m.save
end