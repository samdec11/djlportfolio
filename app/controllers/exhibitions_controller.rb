class ExhibitionsController < ApplicationController
  before_filter :ensure_admin
  def new
    @exhibition = Exhibition.new
  end
  def create
    Exhibition.create(params[:exhibition])
    redirect_to(admin_path)
  end
  def edit
    @exhibition = Exhibition.find(params[:id])
    render :new
  end
  def update
    exhibition = Exhibition.find(params[:id])
    exhibition.update_attributes(params[:exhibition])
    redirect_to(admin_path)
  end
  def destroy
    exhibition = Exhibition.find(params[:id])
    exhibition.delete
    redirect_to(admin_path)
  end
end