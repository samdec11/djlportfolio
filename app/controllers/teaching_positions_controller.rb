class TeachingPositionsController < ApplicationController
  before_filter :ensure_admin
  respond_to :html, :json

  def new
    @teaching_position = TeachingPosition.new
  end
  def create
    TeachingPosition.create(params[:teaching_position])
    redirect_to(admin_path)
  end
  def edit
    @teaching_position = TeachingPosition.find(params[:id])
    render :new
  end
  def update
    @teaching_position = TeachingPosition.find(params[:id])
    @teaching_position.update_attributes(params[:teaching_position])
    respond_with @teaching_position
  end
  def destroy
    teaching_position = TeachingPosition.find(params[:id])
    teaching_position.delete
    redirect_to(admin_path)
  end
end