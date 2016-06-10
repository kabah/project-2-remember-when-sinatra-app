# Memory.destroy_all
# require_relative '../models/comments'

require_relative '../app/models/memory'
require 'faker'

100.times do 
	m = Memory.new
	m.name = Faker::Name.first_name
	m.title = Faker::Lorem.sentence
	m.content = Faker::Lorem.paragraph(8)
	m.created_at =Faker::Date.forward(365)

	m.save
end

# 200.times do

# 	id_counter = 3

# 	c = Comment.new
# 	c.name = Faker::Name.first_name
# 	c.content = Faker::Lorem.sentence
# 	c.memory_id = id_counter
# 	id_counter = id_counter + 1
# 	c.save


# end


# Memory.create(name: 'User One', title: 'I went into labor', content: 'I gave birth to my five kids...at the same time. QUINTUPLETS!')
# Memory.create(name: 'User Two', title: 'We had the most fun ever', content: 'We went to that super fun place, and had the most fun ever')
# Memory.create(name: 'User Three', title: 'We had an unexpected adventure', content: "We planed to have a totally regular day, but somehow some crazy things happened, but it was awesome. I'll never forget")