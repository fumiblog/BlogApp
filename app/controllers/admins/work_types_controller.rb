class Admins::WorkTypesController < ApplicationController
  def index
    @work_types = WorkType.all
    @work_type = WorkType.new
  end

  def create
    @work_type = WorkType.new(work_type_params)
    @work_type.save
    redirect_to admins_work_types_path
  end

  def destroy
    @work_type = WorkType(params[:id])
    @work_type.destroy
    redirect_to admins_work_types_path
  end

  private
  def work_type_params
    params.require(:work_type).permit(:name)
  end

end
