# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


ApplicationRecord.transaction do 

    User.destroy_all
    ApplicationRecord.connection.reset_pk_sequence!(:users)

    u1 = User.create!(username: 'Pokemaster')
    u2 = User.create!(username: 'Trident')
    u3 = User.create!(username: 'MilnerChenBIGFAN')
    u4 = User.create!(username: 'yaysara')

    ###########

    Artwork.destroy_all
    ApplicationRecord.connection.reset_pk_sequence!(:artworks)

    art1 = Artwork.create!(title: 'MCbest', image_url: 'www.MCBIGFANimg.com', artist_id:u3.id)
    art2 = Artwork.create!(title: 'NFT', image_url: 'www.coinbase.com', artist_id:u4.id)

    ############## 

    ArtworkShare.destroy_all
    ApplicationRecord.connection.reset_pk_sequence!(:artworks)

    artshare1 = ArtworkShare.create!(artwork_id: art1.id, viewer_id:u4.id)
    artshare2 = ArtworkShare.create!(artwork_id: art2.id, viewer_id:u4.id)
    artshare3 = ArtworkShare.create!(artwork_id: art1.id, viewer_id:u1.id)
    artshare3 = ArtworkShare.create!(artwork_id: art1.id, viewer_id:u2.id)

end





