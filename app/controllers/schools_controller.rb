class SchoolsController < ApplicationController
  before_filter :ensure_admin
  respond_to :html, :json

  def new
    @school = School.new
  end
  def create
    School.create(params[:school])
    redirect_to(admin_path)
  end
  def edit
    @school = School.find(params[:id])
    render :new
  end
  def update
    @school = School.find(params[:id])
    @school.update_attributes(params[:school])
    respond_with @school
  end
  def destroy
    school = School.find(params[:id])
    school.delete
    redirect_to(admin_path)
  end
end