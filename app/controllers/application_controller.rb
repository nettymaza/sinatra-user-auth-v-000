class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :views, Proc.new { File.join(root, "../views/") }

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :home
  end

  #Renders sign-up form view, found in signup.erb
  get '/registrations/signup' do
    erb :'/registrations/signup'
  end

  #Handles post request, when user hits 'submit' on signup form.
  post '/registrations' do

    redirect '/users/home'
  end

  #Renders the login form
  get '/sessions/login' do
    erb :'sessions/login'
  end

  post '/sessions' do

    redirect '/users/home'
  end

  get '/sessions/logout' do

    redirect '/'
  end

  get '/users/home' do

    erb :'/users/home'
  end

end
