class Artist < ApplicationRecord
  belongs_to :genre
  belongs_to :user
  has_many :equalizers
  has_many :users, through: :equalizers
  accepts_nested_attributes_for :genre

  def artist_attributes=(attributes)
    artist = Artist.find_or_create_by(attributes) if !attributes['name'].empty?
  end
  
end
