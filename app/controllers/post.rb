get "/post/upvote/:post_id" do
	@post = Post.find_by(id: params[:post_id])
	@post.points += 1
	@post.save
	redirect "/"
end

get "/post/downvote/:post_id" do
	@post = Post.find_by(id: params[:post_id])
	@post.points -= 1
	@post.save
	redirect "/"
end

get "/post/:post_id" do
	@post = Post.find_by(id: params[:post_id])
	erb :post
end

post "/post/comment/:post_id" do
	@comment = Comment.create(description: params[:comment], user_id: session[:user_id], post_id: params[:post_id])
	redirect "/post/#{params[:post_id]}"
end