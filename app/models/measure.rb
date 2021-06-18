class Measure < ApplicationRecord
  belongs_to :song
  has_many :chord_measures, dependent: :destroy
  has_many :chords, through: :chord_measures
end
