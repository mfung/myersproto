class Agent < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :street, :city, :state, :zipcode, :phone, :email]

  validates :name, :presence => true, :uniqueness => true
  
  has_many :brands_carrieds, :dependent => :destroy
  has_many :brands, :through => :brands_carrieds
  
end
