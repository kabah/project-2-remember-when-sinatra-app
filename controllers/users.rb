class RememberWhen < Sinatra::Base
	include SessionHelpers

	before'/*' do
		current_user
	end
	
	enable :sessions, :logging
	set :session_secret, ENV["REMEMBER_WHEN_APP_SECRET"]

	

end
