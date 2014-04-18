class LocationsController < InheritedResources::Base

private
  def location_params
    params.require(:location).permit(:name, :address)
  end
end
