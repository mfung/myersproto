module Admin
  class ProductsController < Admin::BaseController
    before_filter :find_brands, :only => [:edit,:new]

    crudify :product,
            :title_attribute => 'name', :xhr_paging => true
    
    private
    def find_brands
      @brands = Brand.find(:all).sort_by(&:name)
    end
    
  end
end
