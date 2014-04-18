class LocationsController < InheritedResources::Base
  before_filter :set_location_params, only: [:create]
  load_and_authorize_resource



private
  def location_params
    params.require(:location).permit(:name, :address)
  end

  def set_location_params
    params[:location] = location_params
  end
end
