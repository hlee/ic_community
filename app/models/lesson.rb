class Lesson < ActiveRecord::Base
  has_many :feedbacks
  belongs_to :instructor
  has_many :plans
  has_many :planed_users, :through => :plans, :source => 'user', :uniq => true #, :class_name => 'User'
end
