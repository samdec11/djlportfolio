# == Schema Information
#
# Table name: teaching_positions
#
#  id            :integer          not null, primary key
#  first_column  :string(255)
#  second_column :string(255)
#  third_column  :string(255)
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class TeachingPosition < ActiveRecord::Base
  attr_accessible :first_column, :second_column, :third_column
  
  belongs_to :user, :inverse_of => :teaching_positions
end
