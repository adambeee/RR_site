FactoryGirl.define do
  factory :user do
# By passing the symbol :user to the factory command, I tell Factory Girl that the subsequent definition is for a User model object.
    name     "Ariel Figueroa"
    email    "ariel@example.com"
    password "figgy181"
    password_confirmation "figgy181"
  end
end