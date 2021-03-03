class Admins::DashboardsController < ApplicationController
  def index
    @footprints = Footprint.where(genre_id: 5)
    @data = Footprint.where(genre_id: 1)
    @datas = @data.select(:date, :price)
    @times = [date:2021-01-28]
    # byebug
  end

  def create
   
  end

  def update
   
  end
  
  private

end
