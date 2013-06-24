# == Schema Information
#
# Table name: paintings
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  image       :text
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Painting < ActiveRecord::Base
  attr_accessible :name, :image, :description, :remote_image_url
  mount_uploader :image, PaintingUploader
end
