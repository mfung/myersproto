class Agent < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :street, :city, :state, :zipcode, :phone, :email]

  validates :name, :presence => true, :uniqueness => true
  
  has_many :brands_carrieds, :dependent => :destroy
  has_many :brands, :through => :brands_carrieds
  
  def self.find_by_territory_and_brand(territory,brand_id)
    agents = self.find_all_by_territory(territory)
    agents_with_brand = BrandsCarried.find_all_by_brand_id_and_agent_id(brand_id,agents).collect {|agent| agent.agent_id}
    self.find_all_by_id(agents_with_brand)
  end
  
  def self.territories
    self.find(:all, :select => 'DISTINCT territory').sort_by(&:territory)
  end
  
end
