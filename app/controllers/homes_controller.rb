class HomesController < ApplicationController
  def top
    @elapsed_date = (Date.current - Date.new(2020, 9, 30)).numerator
    @blogs = Blog.all
    # byebug
  end
end
