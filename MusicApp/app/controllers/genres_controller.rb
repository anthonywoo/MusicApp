class GenresController < ApplicationController



  def index
    #params[:selected] = [1]
    @genres = Genre.all
    @selected = params[:selected]
  end

  def show
    @genre = Genre.find(params[:id])
  end

end
