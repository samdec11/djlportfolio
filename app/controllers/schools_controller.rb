class SchoolsController < ApplicationController
  before_filter :ensure_admin
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
    school = School.find(params[:id])
    school.update_attributes(params[:school])
    redirect_to(admin_path)
  end
  def destroy
    school = School.find(params[:id])
    school.delete
    redirect_to(admin_path)
  end
end