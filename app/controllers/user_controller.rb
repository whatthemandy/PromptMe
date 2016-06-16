enable 'sessions'

get '/register' do
  erb :register
end

post '/register' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    status 422
    @errors = @user.errors.full_messages
    erb :register
  end
end

get '/login' do
  erb :login
end

post '/login' do
  @user = User.authenticate(params[:user][:email], params[:user][:password])
  if @user
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    status 422
    @error = "Login failed - please try again."
    erb :login
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :profile  # changed from: erb :user
end
