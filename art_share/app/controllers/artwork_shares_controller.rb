class ArtworkSharesController < ApplicationController

    def create

        new_share = ArtworkShares.new(artwork_shares_params)


    end


    def artwork_shares_params

        params.require(:sharing_info).permit(:artwork_id, :viewer_id)

    end

end