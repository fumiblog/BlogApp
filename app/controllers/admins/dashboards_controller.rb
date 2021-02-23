class Admins::DashboardsController < ApplicationController
  def index
    @footprints = Footprint.where(genre_id: 5)
  end
  
end
