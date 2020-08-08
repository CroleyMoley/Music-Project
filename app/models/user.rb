class User < ApplicationRecord
    has_many :equalizers
    has_many :equalized_artists, through: :equalizers, source: :artist 
    has_many :artists 

    validates :username, uniqueness: true, presence: true
    has_secure_password 
    
   def self.google_creation(auth)
    @user = User.find_or_create_by(username: auth[:info][:email]) do |u|
      u.password = SecureRandom.hex
    end
  end


end
