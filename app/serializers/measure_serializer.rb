class MeasureSerializer
    include JSONAPI::Serializer
    attributes :song_id, except: [:created_at, :updated_at]
    has_many :chords
  
end