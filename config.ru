require 'rubygems'
require 'bundler'
Bundler.require

enable :sessions


require './app'

require './models/memory'
require './models/comment'

require './controllers/memories'
require './controllers/comments'

# require './db/seeds'

run RememberWhen