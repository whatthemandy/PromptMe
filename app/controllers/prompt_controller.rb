get '/prompts' do
  @prompts = Prompt.all
  erb :'/prompt/index'
end

get '/prompts/new' do
  @prompt = Prompt.new
  erb :'/prompt/form'
end

post '/prompts' do
  @prompt = Prompt.new(params[:prompt])
  @prompt.user = current_user
  # make sure changes can only be made to current user's info
  if @prompt.user == current_user
    if @prompt.save
      redirect '/'
    else
      status 422
      erb :'/prompt/form'
    end
  else
    # status
    redirect '/'
  end
end

get '/prompts/:id' do
  @prompt = Prompt.find(params[:id])
  erb :'prompt/show'
end

get '/prompts/:id/edit' do
  @prompt = Prompt.find(params[:id])
  erb :'/prompt/edit'
end

patch '/prompts/:id' do
  @prompt = Prompt.find(params[:id])
  if @prompt.user == current_user
    if @prompt.update(params[:prompt])
      redirect '/'
    else
      status 422
      erb :'/prompt/edit'
    end
  else
    redirect '/'
  end
end

# reassign prompt to "deleted" user
patch '/prompts/:id/unassign' do
  prompt = Prompt.find(params[:id])
  if prompt.user == current_user
    prompt.update_attributes(user: deleted_user)
    redirect '/'
  else
    # status
    redirect '/'
  end
end