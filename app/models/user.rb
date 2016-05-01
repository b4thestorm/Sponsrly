class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :role_type
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 
  has_one :event , foreign_key: :sponsee_id 
  belongs_to :event  
  #this gives us a user with an event. u.event
     

  def set_role(target) 
    self.role = target
    self.save
  end


end
