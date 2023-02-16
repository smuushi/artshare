class ArtworksController < ApplicationController

    def index

        @artworks = Artwork.all

        render json: @artworks

    end

    def create

        @artwork = Artwork.new(artwork_params)

        if @artwork.save
            redirect_to specific_art_url(Artwork.last.id)
        else
            render json: @artwork.errors.full_messages, status: 422
        end

    end

    def show

        @artwork = Artwork.find(params[:slug])

        render json: @artwork

    end

    def update

        @artwork = Artwork.find(params[:slug])

        if @artwork.update(artwork_params)
            redirect_to specific_art_url(params[:slug])
        else
            render json: @artwork.errors.full_messages, status: 422
        end

    end

    def destroy

        @artwork = Artwork.find(params[:slug])

        if @artwork.destroy
            render json: 'RIP ARTWORK'
        end

    end

    def artwork_params

        params.require(:artwork_info).permit(:image_url, :title, :artist_id)

    end


end