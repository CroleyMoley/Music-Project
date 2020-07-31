class User < ApplicationRecord
    has_many :equalizers
    has_many :saved_artists, through: :equalizers, source: :artist 
    has_many :artists 

    validates :username, uniqueness: true, presence: true
    has_secure_password 
end
