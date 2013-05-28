class HomeController < ApplicationController
  before_filter :ensure_admin, :only => [:admin]
  def index
  end
  def about
    @user = User.first
  end
  def paintings
    @paintings = Painting.all
  end
  def paper
  end
  def contact
    @user = User.first
  end
  def admin
    @user = User.first
    @paintings = Painting.all
    @papers = Paper.all
    @links = Link.all
  end
end