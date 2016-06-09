require 'rubygems'
require 'bundler'
Bundler.require


require './app/app'

require './app/models/memory'
require './app/models/comments'

require './app/controllers/memories'
require './app/controllers/comments'

# require './db/seeds'

run RememberWhen