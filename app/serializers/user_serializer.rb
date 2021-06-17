class UserSerializer
    include JSONAPI::Serializer
    attributes :username, :songs

    attribute :songs do |object|
      object.songs.map do |s|
        {id: s.id, title: s.title, author: s.author}
        
      end
    end
  end
  