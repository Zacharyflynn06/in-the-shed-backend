class User < ApplicationRecord
    has_many :songs

    validates :username, uniqueness: true, presence: :true
end
