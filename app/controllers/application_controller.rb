require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
    #.pry
    @user = User.find_by_username(params[:username])
    #binding.pry
    if !@user
      @sessions = session
      erb :error
    else
    #  binding.pry
      session[:user_id] = @user.id
      redirect :"/account"
    end
  end

  get '/account' do
    erb :account
  end

  get '/logout' do
    session.clear
    redirect "/"
  end


end
