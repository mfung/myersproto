class BrandCategory < ActiveRecord::Base
  belongs_to :brand
  has_many :products
  validates_presence_of :name
  validates_uniqueness_of :name
end
