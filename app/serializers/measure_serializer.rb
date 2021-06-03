class MeasureSerializer
  include JSONAPI::Serializer
  # belongs_to :time_signiture
  # belongs_to :song
  has_many :chords
  attributes :song, :time_signiture


  # def song
  #   self.object.song do |s|
  #     {
  #       name: s.name,
  #       id: s.id,
  #       title: s.title

  #     }
  #   end
  # end
end
