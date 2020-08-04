class Equalizer < ApplicationRecord
  belongs_to :user
  belongs_to :artist

  validates :settings, presence: true
end
