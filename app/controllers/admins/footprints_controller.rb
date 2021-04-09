class Admins::FootprintsController < ApplicationController
  before_action :authenticate_admin!

  def index
    # byebug
    if params[:genre_id] === nil
      @footprints = Footprint.all.order(date: :desc) 
    else
      @footprints = Footprint.where(genre_id: params[:genre_id]).order(date: :desc) 
    end
    @footprint = Footprint.new
    @genres = Genre.all
    # byebug
  end

  def create
    @footprint = Footprint.new(footprint_params)
    @genres = Genre.all
    @footprint.save
    # byebug
    redirect_to admins_footprints_path(genre_id: @footprint.genre_id)
  end

  def edit
    @genres = Genre.all
    @footprint = Footprint.find(params[:id])
  end
  
  def update
    @footprint = Footprint.find(params[:id])
    @footprint.update(footprint_params)
    redirect_to admins_footprints_path(genre_id: @footprint.genre_id)
  end

  def destroy
    @footprint = Footprint.find(params[:id])
    # byebug
    @footprint.destroy
    redirect_to admins_footprints_path
  end


  private

  def footprint_params
    params.require(:footprint).permit(
      :date,
      :title,
      :price,
      :body,
      :genre_id
    )
  end

end
