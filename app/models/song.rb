class Song < ApplicationRecord
    belongs_to :user
    
    has_many :measures
    
    has_one :song_time_sig
    has_one :time_signiture, through: :song_time_sig
end
