class PaintingSweeper < ActionController::Caching::Sweeper
  observe Painting

  def sweep(painting)
    expire_fragment('slider')
    expire_fragment('paintings')
    expire_fragment('admin_paintings')
  end
  alias_method :after_update, :sweep
  alias_method :after_create, :sweep
  alias_method :after_destroy, :sweep
end