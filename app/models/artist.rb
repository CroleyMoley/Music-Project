class Artist < ApplicationRecord
  belongs_to :genre
  belongs_to :user
  has_many :equalizers
  has_many :users, through: :equalizers
  

  validates :artist_name, presence: true, uniqueness: true
  validates :no_duplicates

  def self.alphabetical_order
    order(:artist_name)
  end


  def artist_attributes=(attributes)
    artist = Artist.find_or_create_by(attributes) if !attributes['name'].empty?
  end

  def no_duplicates 
    if Artist.find_by(artist_name: artist_name, genre_id: genre_id)
      errors.add(:artist_name, 'is already listed in the genre')
    end
  end

  def artist_name_and_genre
    "#{artist_name} - #{genre.name}"
  end
  

  
end
