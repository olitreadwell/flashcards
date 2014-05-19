enable :sessions

post '/signup' do
  @user = User.new(username: params[:username],
                                   password: params[:password])

  if @user.save
    give_token
    redirect '/'
  else
    # @error = "Please enter a valid username and password."
  end

  erb :index
end


post '/login' do
  @user = User.authenticate(params[:username],
                                                params[:password])
  if @user
    give_token
    redirect '/'
  else
    # @error = "Incorrect login information."
  end

  erb :index
end


get '/logout' do
  session.clear
  redirect '/'
end
