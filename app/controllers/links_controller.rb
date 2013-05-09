class LinksController < ApplicationController
  before_filter :ensure_admin, :except => [:index]
  def index
    @links = Link.all
  end
  def new
    @link = Link.new
  end
  def create
    Link.create(params[:link])
    redirect_to(admin_path)
  end
  def edit
    @link = Link.find(params[:id])
    render :new
  end
  def update
    link = Link.find(params[:id])
    link.update_attributes(params[:link])
    redirect_to(admin_path)
  end
  def destroy
    link = Link.find(params[:id])
    link.delete
    redirect_to(admin_path)
  end
end