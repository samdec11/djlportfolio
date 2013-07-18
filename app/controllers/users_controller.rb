class UsersController < ApplicationController
  respond_to :html, :json

  before_filter :ensure_admin
  def edit
    binding.pry
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    respond_with @user
  end
end