class PhotosController < InheritedResources::Base
  before_filter :set_photo_params, only: [:create]
  load_and_authorize_resource
  # belongs_to :location

  def create
    create!(:notice => "Dude! Nice job uploading that photo.") { @photo.location }
  end

private

  def photo_params
    params.require(:photo).permit(:pic, :caption, :taken, :location_id)
  end

  def set_photo_params
    params[:photo] = photo_params
  end
end
