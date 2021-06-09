class Song < ApplicationRecord
    has_many :measures
    belongs_to :user

    has_one :song_time_sig
    has_one :time_signiture, through: :song_time_sig
end
