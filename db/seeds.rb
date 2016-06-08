500.times do 
	a = Memory.new
	a.name = Faker::Name.first_name
	a.title = Faker::Lorem.sentence
	a.content = Faker::Lorem.paragraph(8)
	a.created_at =Faker::Date.forward(365)

	a.save
end


# Memory.create(name: 'User One', title: 'I went into labor', content: 'I gave birth to my five kids...at the same time. QUINTUPLETS!')
# Memory.create(name: 'User Two', title: 'We had the most fun ever', content: 'We went to that super fun place, and had the most fun ever')
# Memory.create(name: 'User Three', title: 'We had an unexpected adventure', content: "We planed to have a totally regular day, but somehow some crazy things happened, but it was awesome. I'll never forget")