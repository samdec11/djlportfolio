# == Schema Information
#
# Table name: papers
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  image       :text
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Paper < ActiveRecord::Base
  attr_accessible :name, :image, :description
end
