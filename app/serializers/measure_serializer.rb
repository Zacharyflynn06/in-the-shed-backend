class MeasureSerializer
  include JSONAPI::Serializer

  has_many :chords
end
