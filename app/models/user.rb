class User < ActiveRecord::Base #ActiveRecord is what Rails use to talk to a Database.
  # This sets it so the user can only edit their name and email.
  # Will not allow id, created_at and update_at to be modified in any way.

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 

# NONE OF THIS CODE IS NEEDED NOW THAT DEVISE IS BEING USED.
 # attr_accessible :name, :email, :password, :password_confirmation

  # before_save {self.email = email.downcase}
  # These are the validations for the testing.  All these validations are delcared in user_spec.rb.
 # email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 # validates :name,  :presence   => true, :length => {:maximum => 50} # This tests to make sure name is present.
 # validates :email, :presence   => true # This tests to make sure email is present.
 # validates :email, :format     => {:with => email_regex}  # Makes sure email address is a valid email format.
 # validates :email, :uniqueness => {:case_sensitive => false} # Makes sure the entered email address doesn't already exists.

 # has_secure_password
 # validates :password, length: {:minimum => 8}
 # validates :password_confirmation, length: {:minimum => 8}

end
