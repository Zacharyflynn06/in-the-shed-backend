class SongSerializer
  include JSONAPI::Serializer
  attributes :title, :author, :tempo, :id
end
