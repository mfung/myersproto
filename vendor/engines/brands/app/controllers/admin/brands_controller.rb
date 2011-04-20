module Admin
  class BrandsController < Admin::BaseController

    crudify :brand,
            :title_attribute => 'name', :xhr_paging => true

  end
end
