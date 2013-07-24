class PaperSweeper < ActionController::Caching::Sweeper
  observe Paper

  def sweep(paper)
    expire_fragment('papers')
    expire_fragment('admin_papers')
  end
  alias_method :after_update, :sweep
  alias_method :after_create, :sweep
  alias_method :after_destroy, :sweep
end