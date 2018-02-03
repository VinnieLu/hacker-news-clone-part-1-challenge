get "/" do
	@posts = Post.all.order(points: :DESC)
	erb :index
end


