require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :session
    set :session_secret, "super dooper top secret"
  end


  get '/' do
    session[:item] = params[:item]
    @session = session
    erb :index
  end

  post '/checkout' do
    erb :checkout
  end

end
