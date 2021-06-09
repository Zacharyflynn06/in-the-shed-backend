class Measure < ApplicationRecord
  belongs_to :song
  has_many :chord_measures
  has_many :chords, through: :chord_measures
end
