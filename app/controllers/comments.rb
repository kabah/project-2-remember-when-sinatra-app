class RememberWhen < Sinatra::Base

	#post comments
	post '/:id/comments' do
		@memory = Memory.find(params[:id])
		comment = Comment.create(params[:comment])
		@memory.comments.push(comment) #make the association
		puts comment
		redirect ("/#{@memory.id}")
	end

end

