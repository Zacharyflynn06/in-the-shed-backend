class SongSerializer
  include JSONAPI::Serializer
  attributes :user, :title, :author, :tempo, :id, :measures, :time_signiture

  attribute :time_signiture do |object|
    object.time_signiture do |ts|
      {id: ts.id, name: ts.name}
    end
  end

  attribute :measures do |object|
    object.measures.map do |m|
      {id: m.id, chords: m.chords}
    end
  end
end
