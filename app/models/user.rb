class User < ActiveRecord::Base #ActiveRecord is what Rails use to talk to a Database.
  # This sets it so the user can only edit their name and email.
  # Will not allow id, created_at and update_at to be modified in any way.

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

    validates_presence_of :first_name, :last_name, :phone
    validates_format_of :email, :with => /regex/i
    validates :phone, length: {minimum: 7, maximum: 10}

  before_save :uppercase_fields

  def uppercase_fields
        self.first_name.capitalize!
        self.last_name.capitalize!
  end

  has_attached_file :avatar

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def last_initial
    self.last_name[0,1].capitalize
  end
  def first_initial
    self.first_name[0,1].capitalize
  end
  has_many :tasks, :foreign_key => "wallet_id", dependent: :destroy
  has_many :messages, :foreign_key => "recipient_id"
  has_many :reviews
  has_many :authentications, dependent: :destroy

#for omniauth

def apply_omniauth(omniauth)

  authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'], :oauth_token => omniauth['credentials']['token'], :oauth_expires_at => omniauth['credentials']['expires_at'])
  self.email = omniauth['info']['email'] if email.blank?
  self.first_name = omniauth['info']['first_name'] if first_name.blank?
  self.last_name = omniauth['info']['last_name'] if last_name.blank?
  self.image_url = omniauth['info']['image'] if image_url.blank?
  self.username = omniauth['info']['nickname'] if username.blank?

end

=begin
def self.from_omniauth(auth)
  where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
    user.provider = auth.provider
    user.uid = auth.uid
    user.email = auth.info.email
    user.first_name = auth.info.first_name
    user.last_name = auth.info.last_name
    user.image_url = auth.info.image
    user.oauth_token = auth.credentials.token
    user.oauth_expires_at = Time.at(auth.credentials.expires_at)
    user.save!
  end
=end
end


