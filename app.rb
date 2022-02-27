require 'sinatra'
require 'sinatra/url_for'
require 'sinatra/respond_with'
require 'haml'

class Quota < Sinatra::Application
  register Sinatra::RespondWith
  helpers Sinatra::UrlForHelper
end

require_relative 'models/init'
#require_relative 'helpers/init'
require_relative 'routes/init'
