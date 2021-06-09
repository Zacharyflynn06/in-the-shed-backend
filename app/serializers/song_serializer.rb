class SongSerializer
  include JSONAPI::Serializer
  attributes :title, :author, :tempo, :id
  has_many :measures, except: [:created_at, :updated_at]

  def measures
    self.object.measures.map do |m|
      {
        chords: m.chords,
        time_signiture: m.time_signiture.name
      }
    end
  end
end
