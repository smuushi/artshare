class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true


    has_many(
        :artworks, 
        foreign_key: :artist_id, 
        inverse_of: :artist,
        class_name: :Artwork, 
        primary_key: :id, 
        dependent: :destroy
    )

end
