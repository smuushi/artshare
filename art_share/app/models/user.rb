# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true


    has_many(
        :artworks, 
        class_name: :Artwork, 
        foreign_key: :artist_id, 
        primary_key: :id, 
        inverse_of: :artist,
        dependent: :destroy
    )

    has_many(
        :views, 
        class_name: :ArtworkShare, 
        foreign_key: :viewer_id, 
        primary_key: :id, 
        dependent: :destroy
    )

    has_many(
        :shared_artworks, 
        through: :views, 
        source: :artwork
    )

end
