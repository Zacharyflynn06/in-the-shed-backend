class Chord < ApplicationRecord
    has_many: measures
    has_many: songs, through: :measures
end
