class UsersController < ApplicationController
  before_filter :ensure_admin
  def edit
    @user = User.find(params[:id])
  end
  def update
    user = User.find(params[:id])
    user.update_attributes(params[:user])
    redirect_to(admin_path)
  end
end