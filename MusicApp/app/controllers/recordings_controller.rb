class RecordingsController < ApplicationController

  def create
    Recording.create(params[:recording])
    redirect_to song_url(params[:recording][:song_id])
  end


end
