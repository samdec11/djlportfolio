class HomeController < ApplicationController
  before_filter :ensure_admin, :only => [:admin]
  def index
  end
  def about
    @user = User.first
  end
  def contact
    @user = User.first
  end
  def admin
    @user = User.first
    @paintings = Painting.order(:created_at)
    @papers = Paper.order(:created_at)
    @links = Link.order(:created_at)
    @solos = Exhibition.solo.order(:created_at)
    @groups = Exhibition.group.order(:created_at)
    @schools = School.order(:created_at)
    @positions = TeachingPosition.order(:created_at)
  end
end