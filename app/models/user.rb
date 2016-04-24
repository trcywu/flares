class User < ActiveRecord::Base
  has_many :flares
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable
  validates :first_name, presence: true
  validates :username, length: { in: 3..20 }
  validates :description, length: { maximum: 140 }
 

  before_validation :add_default_location

  private
   def add_default_location
    self.location = "London, United Kingdom" if self.location.nil?
    puts self
   end
end
