class HomesController < ApplicationController
  def top
    # @elapsed_date = (Date.current - Date.new(2020, 9, 30)).numerator
    # byebug
    if params[:category_id] === nil
      @blogs = Blog.all
    else
      @blogs = Blog.where(category_id: params[:category_id])
    end
    @categories = Category.all
    @footprints = Footprint.where(genre_id: 5)
    # byebug
  end
end
