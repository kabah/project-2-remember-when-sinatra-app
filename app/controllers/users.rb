class RememberWhen < Sinatra::Base
	include SessionHelpers
	
	enable :sessions, :logging
	set :session_secret, ENV["REMEMBER_WHEN_APP_SECRET"]

	before'/*' do
		current_user
	end
	
	get '/login' do
		erb :index
	end

	post '/login' do
		user = User.find_by(name: params[:name].try(:authenticate, params[:password])
		if user
			session[:user_id] = user.id
			redirect('/')
		else
			redirect ('/login')
		end
	end

	get '/signup' do
		erb :index
	end

	post '/signup' do
		user = User.new(params[:user])
		if user.save
			current_user == true
			session[:user_id] = user.id
			redirect ('/')
		else
			redirect ("/signup?name=#{params[:user][:name]}")
		end
	end
end
