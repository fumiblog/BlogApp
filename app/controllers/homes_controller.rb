class HomesController < ApplicationController
  def top
    if params[:category_id] === nil && params[:search] === nil
      @blogs = Blog.all.order(updated_at: :desc)
    elsif params[:search] === nil
      @blogs = Blog.where(category_id: params[:category_id])
    else
      @blogs = Blog.where('title like ?', '%' + params[:search] + '%')
    end
    @categories = Category.all
    @footprints = Footprint.where(genre_id: 5)

  end
end
