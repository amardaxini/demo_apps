class Project < ActiveRecord::Base
  has_many :memberships
  has_many :users, :through => :memberships
  belongs_to :manager , :class_name =>"User"
  has_many :milestones,:dependent=>:destroy
  
  def tasks
     self.milestones.includes(:tasks).collect{|m| m.tasks}.flatten
  end
  
end
