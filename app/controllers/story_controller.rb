get '/stories/new' do
  erb :'/story/form'
end

post '/stories' do
  story = Story.new(params[:story])
  user = current_user
  story.user = user
  story.save
  redirect "/prompts/#{story.prompt.id}"
end

get '/stories/:id/edit' do
  @story = Story.find(params[:id])
  erb :'/story/edit'
end

patch '/stories/:id' do
  story = Story.find(params[:id])
  story.update(params[:story])
  redirect '/'
end

delete '/stories/:id' do
  story = Story.find(params[:id])
  story.destroy
  redirect '/'
end
