require 'sinatra'
require 'sinatra/url_for'
require 'sinatra/respond_to'
require 'haml'

class Quota < Sinatra::Application
  register Sinatra::RespondTo
  helpers Sinatra::UrlForHelper
end

require_relative 'models/init'
#require_relative 'helpers/init'
require_relative 'routes/init'
