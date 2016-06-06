class RememberWhen < Sinatra::Base
	get '/' do
		@memories = Memory.all
		erb :memories
	end
end
