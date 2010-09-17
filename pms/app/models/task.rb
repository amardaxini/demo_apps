class Task < ActiveRecord::Base
  belongs_to :milestone
  STATUSES =['Due' ,'Completed']
  validates_inclusion_of :status ,:in => STATUSES , :on => :update
  belongs_to :owner , :class_name => "User"
  before_create :set_default_status
  def completed?
    self.status == STATUSES[1]
  end
  def project
    self.milestone.project rescue "" 
  end
private
  def set_default_status
   self.status = "Due"
 end
end
