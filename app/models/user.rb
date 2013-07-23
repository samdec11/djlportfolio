# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  email            :string(255)
#  password_digest  :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  artist_statement :text
#  bio_image        :text
#  contact_image    :text
#  twitter          :string(255)
#  facebook         :string(255)
#  tumblr           :string(255)
#  contact_message  :text
#

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :password, :password_confirmation, :artist_statement, :bio_image, :remote_bio_image_url, :contact_image, :remote_contact_image_url, :twitter, :facebook, :tumblr, :contact_message
  mount_uploader :bio_image, PicUploader
  mount_uploader :contact_image, PicUploader
end
