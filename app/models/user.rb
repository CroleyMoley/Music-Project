class User < ApplicationRecord
    has_many :equalizers
    has_many :artists, through: :equalizers
end
