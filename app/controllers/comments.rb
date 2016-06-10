class RememberWhen < Sinatra::Base

	#post comments
	post '/memories/:id/comments' do
		@memory = Memory.find(params[:id])
		comment = Comment.create(params[:comment])
		@memory.comments.push(comment) #make the association
		puts comment
		redirect ("/memories/#{@memory.id}")
	end

end

