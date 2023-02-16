class Artwork < ApplicationRecord
  
  belongs_to(
    :artist, 
    foreign_key: :artist_id,
    class_name: :User,
    primary_key: :id
  )

end
