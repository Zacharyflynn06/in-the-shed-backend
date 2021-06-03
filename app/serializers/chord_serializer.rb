class ChordSerializer
  include JSONAPI::Serializer
  attributes :name
  has_many :measures
end
