class PaintingsController < ApplicationController
  before_filter :ensure_admin, :except => [:index]
  def index
    @paintings = Painting.order(:created_at)
  end
  def new
    @painting = Painting.new
  end
  def create
    Painting.create(params[:painting])
    redirect_to(admin_path)
  end
  def edit
    @painting = Painting.find(params[:id])
    render :new
  end
  def update
    painting = Painting.find(params[:id])
    painting.update_attributes(params[:painting])
    redirect_to(admin_path)
  end
  def destroy
    painting = Painting.find(params[:id])
    painting.delete
    redirect_to(admin_path)
  end
end