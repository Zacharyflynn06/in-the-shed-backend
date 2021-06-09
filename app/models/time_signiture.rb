class TimeSigniture < ApplicationRecord
    has_many :song_time_sigs
    has_many :songs, through: :song_time_sigs
end
