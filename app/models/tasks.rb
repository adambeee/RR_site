class Task < ActiveRecord::Base #ActiveRecord is what Rails use to talk to a Database.
  belongs_to :user
  validates_presence_of :subject, :description, :zipcode
end
