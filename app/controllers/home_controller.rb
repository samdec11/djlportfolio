class HomeController < ApplicationController
  before_filter :ensure_admin, :only => [:admin]
  def index
  end
  def about
  end
  def paintings
    @paintings = Painting.all
  end
  def paper
  end
  def contact
  end
  def admin
    @paintings = Painting.all
    @user = User.first
    @papers = Paper.all
  end
end