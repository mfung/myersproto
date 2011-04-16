class Agent < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :street, :city, :state, :zipcode, :phone, :email]

  validates :name, :presence => true, :uniqueness => true
  
end
