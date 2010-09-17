class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:name
  has_many :memberships
  has_many :projects, :through => :memberships
  validates_presence_of :name
  
  def is_owner_of?(object)
    return (self == object.owner)
  end  
  
  def is_manager_of?(project)
     return(self == project.manager)
  end
  def self.user_name_list
    User.all.collect{|u| u.name }
  end
end
