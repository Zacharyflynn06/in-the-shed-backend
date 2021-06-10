class SongTimeSig < ApplicationRecord
    belongs_to :song
    belongs_to :time_signature
end
