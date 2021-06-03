class SongSerializer
  include JSONAPI::Serializer
  attributes :title, :author, :tempo, :id
  has_many :measures
end
