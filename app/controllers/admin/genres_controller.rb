class Admin::GenresController < ApplicationController
<<<<<<< HEAD
  
  def index
    @genres = Genre.all
=======
  before_action :authenticate_admin!
  
  def index
    @genres = Genre.all
    @genre = Genre.new
>>>>>>> develop
  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save
<<<<<<< HEAD
    redirect_to admin_genres_path
  end

  def edit
  end

  def update
=======
    redirect_to request.referer
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to admin_genres_path
>>>>>>> develop
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end
  
<<<<<<< HEAD
end
=======
end
>>>>>>> develop
