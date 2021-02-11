class HomesController < ApplicationController
  def top
    if params[:category_id] === nil
      @blogs = Blog.all.order(updated_at: :desc)
    else
      @blogs = Blog.where(category_id: params[:category_id])
    end
    @categories = Category.all
    @footprints = Footprint.where(genre_id: 5)
    # byebug
  end
end
