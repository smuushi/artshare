# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
  
  belongs_to(
    :artist, 
    foreign_key: :artist_id,
    class_name: :User,
    primary_key: :id
  )

  has_many(
    :shares, 
    foreign_key: :artwork_id,
    primary_key: :id, 
    class_name: :ArtworkShare,
    dependent: :destroy
  )

  has_many(
    :shared_viewers,
    through: :shares, 
    source: :viewer
  )

end
