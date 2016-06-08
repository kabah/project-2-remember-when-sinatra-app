class RememberWhen < Sinatra::Base
	
	#index
	get '/' do
		redirect ('/memories')
	end

	get '/memories' do
		@memories = Memory.order(id: :desc).all
		@rand1 = Memory.limit(1).order("RANDOM()")
		@rand2 = Memory.limit(1).order("RANDOM()")
		@rand3 = Memory.limit(1).order("RANDOM()")
		# p @rand[0].name
		erb :memories
	end
	
	#new
	get '/memories/new' do
		@memory = Memory.new
		erb :new
	end
	
	#show
	get '/memories/:id' do
		@memory = Memory.find(params[:id])
		erb :show
	end


	#create
	post '/memories' do
		@memory = Memory.new(params[:memory])
		if @memory.save
			redirect("/memories/#{@memory.id}")
		else
			erb :new 
		end
	end

	#edit
	get '/memories/:id/edit' do
		@memory = Memory.find(params[:id])
		erb :edit
	end

	#update
	post '/memories/:id' do
		@memory = Memory.find(params[:id])
		if @memory.update_attributes(params[:memory])
			redirect("/memories/#{@memory.id}")			
		else
			erb :edit
		end
	end

	#delete
	post '/memories/:id/delete' do
		@memory = Memory.find(params[:id])
		@memory.destroy
		redirect('/memories')
	end

end
