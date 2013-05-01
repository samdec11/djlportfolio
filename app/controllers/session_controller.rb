class SessionController < ApplicationController
  def create
    user = User.where(:email => params[:email]).first
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to(admin_path)
    else
      flash[:notice] = 'Invalid login, try again.'
      redirect_to(root_path)
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to(root_path)
  end
end