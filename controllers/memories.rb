class RememberWhen < Sinatra::Base
	enable  :sessions, :logging, :raise_errors
	
	#new
	get '/new' do
		@memory = Memory.new
		erb :new
	end
	
	#show
	get '/:id' do
		@memory = Memory.find(params[:id])
		@comments = @memory.comments.order(id: :asc)
		erb :show
	end


	#create
	post '/' do
		@memory = Memory.new(params[:memory])
		if @memory.save 
			redirect '/'
		else 
			redirect '/new'
		end
	end

	#edit
	get '/:id/edit' do
		@memory = Memory.find(params[:id])
		erb :edit
	end

	#update
	post '/:id' do
		@memory = Memory.find(params[:id])
		if @memory.update_attributes(params[:memory])
			redirect("/#{@memory.id}")			
		else
			erb :edit
		end
	end

	#delete
	post '/:id/delete' do
		@memory = Memory.find(params[:id])
		@memory.destroy
		redirect('/')
	end
end