# == Schema Information
#
# Table name: exhibitions
#
#  id            :integer          not null, primary key
#  kind          :string(255)
#  first_column  :string(255)
#  second_column :string(255)
#  third_column  :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Exhibition < ActiveRecord::Base
  attr_accessible :kind, :first_column, :second_column, :third_column

  def self.solo
    Exhibition.where(:kind => "solo")
  end

  def self.group
    Exhibition.where(:kind => "group")
  end
end
