class GenresController < ApplicationController
     before_action :set_instant, only: [:show, :edit, :update]

    def index
    end

    def show 

    end

    def new 
        @genre = Genre.new
    end

    def create 
        @genre = Genre.new(post_params(:name))
        @genre.save
        redirect_to genre_path(@genre)
    end

    def edit 

    end

    def update 
        @genre.update(post_params(:name))
        redirect_to genre_path(@genre)
    end

        private
        def set_instant
            @genre = Genre.find(params[:id])
        end

        def post_params(*args)
            params.require(:genre).permit(*args)
        end
end