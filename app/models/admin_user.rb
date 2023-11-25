class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :phone, uniqueness: true

  def email_required?
   false
  end
  
  def email_changed?
   false
  end
  
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
end
