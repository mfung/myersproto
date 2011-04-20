class BrandsCarried < ActiveRecord::Base
  belongs_to :agent
  belongs_to :brand
end
