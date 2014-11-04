namespace :db do |variable|
	desc "Fill database with sample date"
	task populate: :environment do
		User.create!(	name: "Example User",
						email: "examplero@railstutorial.org",
						password: "foobar",
						password_confirmation: "foobar",
						admin: true)
		99.times do |n|
			name = Faker::Name.name
			email = "examplero-#{n+1}@railstutorial.org"
			password = "password"
			User.create!(	name: name,
							email: email,
							password: password,
							password_confirmation: password)
		end

		users = User.all(limit: 6)
		50.times do
			content = Faker::Lorem.sentence(5)
			users.each { |user| user.microposts.create!(content: content) }
		end
	end
end