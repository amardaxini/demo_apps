class Milestone < ActiveRecord::Base
  belongs_to :project
  has_many :tasks,:dependent=>:destroy
  validates_uniqueness_of :name
  belongs_to :owner , :class_name => "User"
end
