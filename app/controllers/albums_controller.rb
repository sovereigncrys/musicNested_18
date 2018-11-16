class AlbumsController < ApplicationController
  before_action :set_artist
  
  def index
    @albums = @artist.albums
  end

  def show
  end

  def new
    @album = artist.album.new
  end

  def create
    @album = artist.album.new(album_params)
    if @album.save
      redirect_to billboard_artist_path(@artist.billboard_id, @artist)
    else
      render :new
    end
  end

  def update
    if @album.update
      redirect_to artist_albums_path
  end

  def destroy
    @album.destroy
    redirect_to billboard_artist_path
  end

  def edit
    render partial: 'form'
  end

  private 
  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def album_params
    params.require(:album).permit(:name, :tracks)
  end

end
