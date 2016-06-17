get '/prompts' do
  @prompts = Prompt.all
  erb :'/prompt/index'
end

get '/prompts/new' do
  erb :'/prompt/form'
end

post '/prompts' do
  user = current_user
  prompt = Prompt.new(params[:prompt])
  prompt.user = user
  prompt.save
  redirect '/'
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
  prompt = Prompt.find(params[:id])
  prompt.update(params[:prompt])
  redirect '/'
end

# changed to reassign user - not really delete route anymore
delete '/prompts/:id' do
  prompt = Prompt.find(params[:id])
  prompt.update_attributes(user: User.first)
  redirect '/'
end
