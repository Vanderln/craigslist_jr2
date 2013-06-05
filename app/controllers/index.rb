get '/' do
  @category = Category.all
  erb :index
end

get '/create_post' do
  @key = ((0..9).to_a + ("A".."Z").to_a).sample(6).join
  @category = Category.all
  erb :create_post
end

get '/:category' do
  @category = Category.find_by_url_slug(params[:category])
  @post = Post.find_all_by_category_id(@category.id)
  erb :category
end

get '/posts/edit' do
  erb :edit_key
end

get '/:category/:post' do
  @category = Category.find_by_url_slug(params[:category])
  @post = Post.find_by_title(params[:post])
  erb :post
end



get '/posts/edit/:key' do
  @post = Post.find_by_user_key(params[:key])

end

post'/create_post/:key' do
  @post = Post.create(params[:post])
  @category = Category.find_by_id(@post.category_id)
  erb :post
end

post '/edit_post' do
  @category = Category.all
  @post = Post.find_by_user_key(params[:key])
  if @post
    erb :edit_post
  else  
    erb :error
  end
end

post '/edit_post/final' do
  @category = Category.find_by_id(params[:post][:category_id])
  # p params.inspect
  @post = Post.find_by_user_key(params[:post][:user_key])

  @post.update_attributes(params[:post])

  erb :post
end
