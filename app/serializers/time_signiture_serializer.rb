class TimeSignitureSerializer
    include JSONAPI::Serializer
    attributes :name, except: [:created_at, :updated_at]
end
  