get '/stories/new' do
  @story = Story.new
  erb :'/story/form'
end

post '/stories' do
  @story = Story.new(params[:story])
  @prompt = Prompt.new(params[:prompt])
  @story.user = current_user
  if @story.save
    redirect "/prompts/#{@story.prompt.id}"
  # render errors if story doesn't save:
  else
    status 422
    # erb :'/story/form'
    redirect "/prompts/#{@story.prompt.id}"
  end
end

get '/stories/:id/edit' do
  @story = Story.find(params[:id])
  erb :'/story/edit'
end

patch '/stories/:id' do
  @story = Story.find(params[:id])
  # make sure changes can only be made to current user's info
  if @story.user == current_user
    if @story.update(params[:story])
      redirect "/users/#{@story.user_id}"
    else
      status 422
      erb :'/story/edit'
    end
  else
    # status
    redirect '/'
  end
end

delete '/stories/:id' do
  story = Story.find(params[:id])
  if story.user == current_user
    story.destroy
    redirect '/'
  else
    # status
    redirect '/'
  end
end