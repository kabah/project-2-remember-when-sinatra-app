require 'rubygems'
require 'bundler'
Bundler.require


require './app'

require './models/memory'
require './models/comments'

require './controllers/memories'
require './controllers/comments'

# require './db/seeds'

run RememberWhen