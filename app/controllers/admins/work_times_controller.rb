class Admins::WorkTimesController < ApplicationController
  def index
    @work_times = WorkTime.all
    @work_time = WorkTime.new
  end

  def create
    @work_time = WorkTime.new(work_time_params)
    @work_time.save
    redirect_to admins_work_times_path
  end

  def destroy
    @work_time = WorkTime(params[:id])
    @work_time.destroy
    redirect_to admins_work_times_path
  end

  private
  def work_time_params
    params.require(:work_time).permit(
      :name,
      :worktype_id,
      :start,
      :goal
    )
  end

end
