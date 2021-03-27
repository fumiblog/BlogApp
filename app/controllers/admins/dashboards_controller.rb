class Admins::DashboardsController < ApplicationController
  def index
    @footprints = Footprint.where(genre_id: 5)
    @data = Footprint.where(genre_id: 1)
    @datas = @data.select(:date, :price)
    @times = [date:2021-01-28]
    gon.genre_json = Genre.pluck(:name)
    gon.footprint_json = Footprint.group(:genre_id).sum(:price).values
    gon.blog_writingdate = Blog.group("date(created_at)").pluck("date(created_at)")
    gon.blog_writingcount = Blog.group("date(created_at)").count.values
  end

  def create
   
  end

  def update
   
  end
  
  private

end
