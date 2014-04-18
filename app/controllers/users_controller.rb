class UsersController < InheritedResources::Base

private
  def user_params
    params.require(:user).permit(:name, :password, :role, :image, :remote_photo)
  end
end
