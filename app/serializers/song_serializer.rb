class SongSerializer
  include JSONAPI::Serializer
  attributes :user, :title, :author, :tempo, :id, :measures, :time_signature



  attribute :measures do |object|
    object.measures.map do |m|
      {id: m.id, chords: m.chords}
    end
  end
end
