class SongSerializer
  include JSONAPI::Serializer
  attributes :title, :author, :tempo, :id
  has_many :measures, except: [:created_at, :updated_at]

  # def measures
  #   self.object.measures do |m|
  #     {
  #       chords: m.chords

  #     }
  #   end
  # end
end
