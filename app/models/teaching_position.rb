# == Schema Information
#
# Table name: teaching_positions
#
#  id            :integer          not null, primary key
#  first_column  :string(255)
#  second_column :string(255)
#  third_column  :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class TeachingPosition < ActiveRecord::Base
  attr_accessible :first_column, :second_column, :third_column
end
