get '/prompts' do
  @prompts = Prompt.all
  erb :'/prompt/index'
end

get '/prompts/new' do
  @prompt = Prompt.new
  erb :'/prompt/form'
end

post '/prompts' do
  user = current_user
  @prompt = Prompt.new(params[:prompt])
  @prompt.user = user
  if @prompt.save
    redirect '/'
  else
    erb :'/prompt/form'
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
  if @prompt.update(params[:prompt])
    redirect '/'
  else
    erb :'/prompt/edit'
  end
end

# reassign prompt to "deleted" user
patch '/prompts/:id/unassign' do
  prompt = Prompt.find(params[:id])
  prompt.update_attributes(user: deleted_user)
  redirect '/'
end
