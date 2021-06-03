class MeasureSerializer
  include JSONAPI::Serializer
  attributes :time_signiture
  belongs_to :song
  belongs_to :chord
end
