class Admins::CategoriesController < ApplicationController
  def index
    @categories = Category.all
    if params[:category_id] === nil
      @category = Category.find(1)
    else
      @category = Category.find(params[:category_id])
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    redirect_to admins_categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  
end
