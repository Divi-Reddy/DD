class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
      end
  def update_permissions
    @user = User.find(params[:id])
    authorize! :update_permissions, @user

    if @user.update(user_params)
      redirect_to @user, notice: "Permissions updated successfully."
    else
      render :edit
    end
  end
  def update_permissions
    @user = User.find(params[:id])
    authorize! :update_permissions, @user
  
    if @user.update(admin: true)
      redirect_to @user, notice: "User updated to admin successfully."
    else
      render :edit
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:permission_level)
  end
end
