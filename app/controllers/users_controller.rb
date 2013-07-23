class UsersController < ApplicationController
  respond_to :html, :json

  before_filter :ensure_admin
  def edit_bio
    @user = User.find(params[:id])
  end

  def edit_contact
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    if request.formats.first == "text/html"
      redirect_to(admin_path)
    else
      respond_with @user
    end
  end

  def change_password
    if @auth.authenticate(params[:old_password])
      if !params[:password_confirmation].blank?
        if params[:password] == params[:password_confirmation]
          @auth.password = params[:password]
          @auth.password_confirmation = params[:password_confirmation]
          if @auth.save
            flash[:notice] = "Password successfully updated"
            redirect_to(admin_path)
          else
            flash[:alert] = "Password not changed"
            redirect_to(admin_path)
          end
        else
          flash[:alert] = "New password does not match confirmation"
        end
      else
        flash[:alert] = "Password Confirmation is blank"
      end
    else
      flash[:alert] = "Old password incorrect"
      redirect_to(admin_path)
    end
  end
end