get "/user/profile" do
	@user = User.find_by(id: session[:user_id])
	erb :profile
end

get "/user/register" do
	erb :register
end

post "/user/register" do
	@user = User.create(params)
	redirect "/"
end

get "/user/logout" do
	session[:user_id] = nil
	redirect "/"
end

get "/user/login" do
	erb :login
end

post "/user/login" do
	@user = User.find_by(email: params[:email])
	if @user
		if @user.password = params[:password]
			session[:user_id] = @user.id
			redirect "/user/profile"
		else
			@error = "Please enter a valid username and password."
			erb :login
		end
	else
		@error = "Please enter a valid username and password."
			erb :login
	end
end