class User < ApplicationRecord
    has_many :equalizers
    has_many :saved_artists, through: :equalizers, source: :artist 
    has_many :artists 
    has_secure_password 
end
