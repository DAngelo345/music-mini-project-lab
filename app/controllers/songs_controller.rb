class SongController < ApplicationController
  
  before_action :find_song, only: [:show, :edit, :update, :destroy]
  
  def index
    @songs = Song.all 
  end

  def new
    @song = Song.new

  end

  def show
  end

  def create
    @song = Song.create(song_params)
  end

  def edit
  end

  def update
  end

  def destroy
    @song.destroy

    redirect_to songs_path
  end

  private 

  def song_params

    params.require(:song).permit(:title, :artist, :genre, :duration)

  end

  def find_song

    @song = Song.find(params[:id])

  end

end
