class Admins::AdminsController < ApplicationController
  def edit
    @admin = Admin.find(params[:id])
  end

  def update
    @admin = Admin.find(params[:id])
    @admin.update(admin_params)
    redirect_to root_path
  end

  private

  def admin_params
    params.require(:admin).permit(:name)
  end

end
