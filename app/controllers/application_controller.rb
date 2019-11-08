class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end

  def song_params(*args)
    params.require(:song).permit(*args)
  end

  # combine above three methods with: ?
  # def strong_params(model, *args)
  #   params.require(model).permit(*args)
  # end

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def set_song
    @song = Song.find(params[:id])
  end

  def set_genre
    @genre = Genre.find(params[:id])
  end

end
