class Song < ApplicationRecord
    has_many :measures
    # has_many :chords, through: :measures
end
