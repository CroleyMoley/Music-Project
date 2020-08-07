class Equalizer < ApplicationRecord
  belongs_to :user
  belongs_to :artist

  validates :settings, presence: true
  validates :artist, uniqueness: { scope: :user, message: "already has an EQ Save State" }
end
