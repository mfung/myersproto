module Admin
  class AgentsController < Admin::BaseController

    crudify :agent,
            :title_attribute => 'name', :xhr_paging => true
    
    def remove_brand
      flash[:notice] = 'Brand Removed.'
      a = Agent.find(params[:agent_id])
      b = Brand.find(params[:brand_id])
      a.brands.delete b
      
      redirect_to :action => 'edit', :id => a.id
    end
    
    def add_brand
      flash[:notice] = 'Brand Added.'
      a = Agent.find(params[:agent_id])
      b = Brand.find(params[:brand_id])
      a.brands << b
      
      redirect_to :action => 'edit', :id => a.id
    end

  end
end
