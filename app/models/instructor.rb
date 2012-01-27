class Instructor < ActiveRecord::Base
  has_many :lessons
end
