class Admins::DashboardsController < ApplicationController
  def index
    @footprints = Footprint.where(genre_id: 5)
    @data = Footprint.where(genre_id: 1)
    @datas = @data.select(:date, :price)
    @times = [date:2021-01-28]
    # @genre_json = Genre.pluck(:name).to_json
    @genre_json = Genre.pluck(:name)
    # @footprint_json = Footprint.group(:genre_id).sum(:price).to_json
    # @footprint_json = Footprint.group(:genre_id).sum(:price).pluck(:price).to_json
  end

  def create
   
  end

  def update
   
  end
  
  private

end
