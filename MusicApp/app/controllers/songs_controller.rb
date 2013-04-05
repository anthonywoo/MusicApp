class SongsController < ApplicationController

  def create
    new_song = Song.create(params[:song])
    params[:genre_id].each {|id| GenreSong.create(
                                                :genre_id => id,
                                                :song_id => new_song.id)
                                              }
    redirect_to artist_url(new_song.author)
  end

  def show
    @song = Song.find(params[:id])
    @recording = Recording.new
  end

end
