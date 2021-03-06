class ExhibitionsController < ApplicationController
  before_filter :ensure_admin
  respond_to :html, :json

  def solo
    @solo = Exhibition.new
  end

  def group
    @group = Exhibition.new
  end

  def create
    ex = Exhibition.create(params[:exhibition])
    ex.update_attributes(kind: params[:kind])
    redirect_to(admin_path)
  end

  def edit
    @exhibition = Exhibition.find(params[:id])
    render :new
  end
  def update
    @exhibition = Exhibition.find(params[:id])
    @exhibition.update_attributes(params[:exhibition])
    respond_with @exhibition
  end
  def destroy
    exhibition = Exhibition.find(params[:id])
    exhibition.delete
    redirect_to(admin_path)
  end
end