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
#

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :password, :password_confirmation, :artist_statement, :bio_image, :remote_bio_image_url, :contact_image, :remote_contact_image_url
  mount_uploader :bio_image, PicUploader
  mount_uploader :contact_image, PicUploader

  has_many :exhibitions, :inverse_of => :user
  has_many :schools, :inverse_of => :user
  has_many :teaching_positions, :inverse_of => :user
end
