class ChordMeasure < ApplicationRecord
  belongs_to :chord
  belongs_to :measure
end
