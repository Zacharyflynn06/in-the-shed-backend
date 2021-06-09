class Song < ApplicationRecord
    has_many :measures
    belongs_to :user

    has_many :song_time_sigs
    has_one :time_signiture, through: :song_time_sigs
end
