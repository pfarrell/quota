require 'sinatra'
require 'sinatra/url_for'
require 'haml'
require 'byebug'

class Quota < Sinatra::Application
  helpers Sinatra::UrlForHelper



end

require_relative 'models/init'
#require_relative 'helpers/init'
require_relative 'routes/init'
