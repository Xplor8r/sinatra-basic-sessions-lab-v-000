require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :session
    set :session_secret, "super dooper top secret"
  end
  get '/' do
    erb :index
  end

  post '/checkout'
  
end
