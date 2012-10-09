class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
  :first_name, :last_name
  # attr_accessible :title, :body


	validates :first_name,   presence: true
	validates :last_name,    presence: true

  # Associations go below below below

  has_many :reports
  has_many :dealer_claims, :through => :reports



def full_name
  first_name + " " + last_name  
end


end

