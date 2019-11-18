class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = @album.songs
  end

  def show
  end

  def new
    @song = @album.songs.new
  end

  def edit
  end

  def create
    @song = @album.songs.new(song_params)

    if @song.save
      redirect_to [@album, @song]
    else
      render :new
    end
  end

  def update
    if @song.update(song_params)
      redirect_to [@album, @song]
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to album_songs_path
  end

  private    
  def set_artist
      @artist = Artist.find(params[:artist_id])
    end

    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:title, :genre, :play_count)
    end
end