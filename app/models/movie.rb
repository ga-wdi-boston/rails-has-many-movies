# == Schema Information
#
# Table name: movies
#
#  id         :integer          not null, primary key
#  name       :string
#  rating     :string
#  desc       :text
#  length     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Movie < ActiveRecord::Base
  has_many :reviews
end
