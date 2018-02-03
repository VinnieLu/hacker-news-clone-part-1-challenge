20.times do
	user = User.create!(first_name: Faker::BackToTheFuture.character, email: Faker::Internet.safe_email, password: "password")
	post = Post.create!(title: Faker::BackToTheFuture.quote, body: Faker::FamilyGuy.quote,points: rand(100), user: user)
	comment = Comment.create!(description: Faker::HarryPotter.quote, user: user, post: post)
end
