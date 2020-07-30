class Artist < ApplicationRecord
  belongs_to :genre
  belongs_to :user
  has_many :equalizers
  has_many :users, through: :equalizers
end
