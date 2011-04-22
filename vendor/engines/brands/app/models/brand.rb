class Brand < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :description, :slug]

  validates :name, :presence => true, :uniqueness => true
  
  belongs_to :logo, :class_name => 'Image'
  
  has_many :brands_carrieds, :dependent => :destroy
  has_many :agents, :through => :brands_carrieds
  has_many :brand_categories
  
  def to_param
      "#{id.to_s}-#{slug}"
  end
end
