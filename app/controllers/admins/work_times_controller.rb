class Admins::WorkTimesController < ApplicationController
  def new
    @work_time = WorkTime.new
    @wark_types = Worktype.all
  end

  def index
    @work_times = WorkTime.all
    @work_time = WorkTime.new
  end

  def create
    @work_time = WorkTime.new
    @work_time.title = "就職について"
    @work_time.worktype_id = 2
    @work_time.start = DateTime.now
    @work_time.goal = DateTime.now
    # byebug
    @work_time.save!(work_time_params)
    redirect_to admins_dashboards_path
  end

  def destroy
    @work_time = WorkTime(params[:id])
    @work_time.destroy
    redirect_to admins_work_times_path
  end

  private
  def work_time_params
    params.require(:work_time).permit(
      :title,
      :worktype_id,
      :start,
      :goal
    )
  end

end
