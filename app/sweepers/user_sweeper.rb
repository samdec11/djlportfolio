class UserSweeper < ActionController::Caching::Sweeper
  observe User

  def sweep(paper)
    expire_fragment('contact_image')
    expire_fragment('admin_contact_image')
    expire_fragment('bio_image')
    expire_fragment('admin_bio_image')
  end
  alias_method :after_update, :sweep
end