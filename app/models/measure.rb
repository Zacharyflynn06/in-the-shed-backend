class Measure < ApplicationRecord
  has_many :chord_measures
  has_many :chords, throuh: :chord_measures
end
