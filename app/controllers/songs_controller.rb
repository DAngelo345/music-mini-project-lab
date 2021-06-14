class SongsController < ApplicationController

    before_action :find_song, only: [:show, :edit, :update, :destroy, :new, :create]

    def index
        @songs = Song.all
    end

    def show
    end
    
    def new
        # @song = Song.new
    end

    def create
        @song = Song.find(params[:id])
        @song = Song.create(song_params)

        redirect_to song_path(@song)
    end

    def edit

    end

    def update
        @song = Song.find(params[:id])
        @song = Song.update(song_params)
        redirect_to song_path(@song)
    end

    private

    def song_params
        params.require(:songs).permit(:title, :genre, :artist)
    end


    def find_song

        @song = Song.find(params[:id])
    end
end
