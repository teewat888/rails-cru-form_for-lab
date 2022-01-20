class ArtistsController < ApplicationController 
    before_action :set_instant, only: [:show, :edit, :update]
    
    def index
    end

    def show 

    end

    def new 
        @artist = Artist.new
    end

    def create 
        @artist = Artist.new(post_params(:name, :bio))
        @artist.save
        redirect_to artist_path(@artist)
    end

    def edit 

    end

    def update 
        @artist.update(post_params(:name, :bio))
        redirect_to artist_path(@artist)
    end

        private
        def set_instant
            @artist = Artist.find(params[:id])
        end

        def post_params(*args)
            params.require(:artist).permit(*args)
        end

end