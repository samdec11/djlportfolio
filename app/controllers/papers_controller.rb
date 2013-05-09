class PapersController < ApplicationController
  before_filter :ensure_admin, :except => [:index]
  def index
    @papers = Paper.all
  end
  def new
    @paper = Paper.new
  end
  def create
    Paper.create(params[:paper])
    redirect_to(admin_path)
  end
  def edit
    @paper = Paper.find(params[:id])
    render :new
  end
  def update
    paper = Paper.find(params[:id])
    paper.update_attributes(params[:paper])
    redirect_to(admin_path)
  end
  def destroy
    paper = Paper.find(params[:id])
    paper.delete
    redirect_to(admin_path)
  end
end