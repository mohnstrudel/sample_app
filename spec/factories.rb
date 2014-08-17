FactoryGirl.define do
	factory :user do
		name		"Anton Kostin"
		email		"schnibba@gmail.com"
		password	"foobar"
		password_confirmation "foobar"
	end
end