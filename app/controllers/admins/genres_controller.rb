class Admins::GenresController < ApplicationController
  before_action :authenticate_admin!

  def index
    @genres = Genre.all
    @genre = Genre.new
    # @genre.target = 0
    # @genres.each do |genre|
    #   @genre_targets = genre.find(:target => true).footprints.sum
    # end
    # byebug
    # if @genre_targets.target == true
    #   @genre_target += @genre_targets.sum(:price)
      # byebug
    # end
    # @genres.each.select do |genre|
    #   genre.target == true
    #   @genre_targets = genre.footprints.sum(:price)
    # end
  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to admins_genres_path
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to admins_genres_path
  end

  def destroy
    @genre = Genre.find(params[:id])
    @genre.destroy
    redirect_to admins_genres_path
  end

  private

  def genre_params
    params.require(:genre).permit(
      :name,
      :target
    )
  end

end
