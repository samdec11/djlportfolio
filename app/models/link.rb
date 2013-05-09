# == Schema Information
#
# Table name: links
#
#  id         :integer          not null, primary key
#  display    :string(255)
#  address    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Link < ActiveRecord::Base
  attr_accessible :display, :address
end
