class SongSerializer
  include JSONAPI::Serializer
  attributes :title, :author, :tempo, :id
  has_one :time_signiture, except: [:created_at, :updated_at]
  has_many :measures

  def measures
    self.object.measures.map do |m|
      {
        chords: m.chords,

      }
    end
  end
end
