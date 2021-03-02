class Admins::DashboardsController < ApplicationController
  def index
    @footprints = Footprint.where(genre_id: 5)
    @work_time = WorkTime.new
    # @work_time = WorkTime.find(params[:id])
    @work_times = WorkTime.all
  end

  def create
    # byebug
    @work_time = WorkTime.new(work_time_params)
    @work_time.worktype_id = 2
    @work_time.start = DateTime.now
    @work_time.goal = DateTime.now
    @work_time.save!
    redirect_to admins_dashboards_path
  end

  def update
    @work_time = WorkTime.find(params[:id])
    @work_time.update
    redirect_to admins_dashboards_path
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
