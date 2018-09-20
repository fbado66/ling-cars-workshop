require 'sinatra'
require 'sinatra/activerecord'
require 'active_record'
require 'sinatra/flash'
require 'pg'
require './models'

enable :sessions

get '/' do
  erb :home
end

# testing my landing page 
# get '/change' do
#   erb :landing_page
# end

get '/users' do
    if session[:user_id]
    erb :users, locals: { users: User.all }
    else
    redirect '/signin'
    end
  end

get '/signup' do
  erb :users, locals: { users: User.all }
  erb :signup
end

post '/signup' do
  user = User.create(
    username: params[:username],
    password: params[:password]
  )
  session[:user_id] = user.id
  redirect '/users'
end

 get '/admin' do
    erb :admin, locals: { ling: Ling.all }
 end

post '/admin' do 
  ling = Ling.create(
    opening_statement: params[:opening_statement],
    info_ling: params[:info_ling],
    closing_statement: params[:closing_statement]
  )

ling = ling.update(
    opening_statement: params[:opening_statement],
    info_ling: params[:info_ling],
    closing_statement: params[:closing_statement]
  )
  redirect '/'
end

get '/signin' do
  user = User.find_by(username: params[:username])
  erb :signin
end

post '/signin' do
  user = User.find_by(username: params[:username])

  if user && user.password == params[:password]
    session[:user_id] = user.id
    flash[:info] = 'You have been signed in'
    redirect '/users'
  else
    flash[:error] = 'There was a problem with your signin, sucka try again!'
    redirect '/signin'
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end