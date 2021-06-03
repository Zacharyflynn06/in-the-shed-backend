class Measure < ApplicationRecord
  belongs_to :song
  belongs_to :time_signiture
  has_many :chord_measures
  has_many :chords, through: :chord_measures
end
