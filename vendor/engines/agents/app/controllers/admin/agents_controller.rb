module Admin
  class AgentsController < Admin::BaseController

    crudify :agent,
            :title_attribute => 'name', :xhr_paging => true
    
    def remove_brand
      flash[:notice] = 'Brand Removed.'
      agent = Agent.find(params[:agent_id])
      brand = Brand.find(params[:brand_id])
      agent.brands.delete brand
      
      redirect_to :action => 'edit', :id => agent.id
    end
    
    def add_brand
      flash[:notice] = 'Brand Added.'
      agent = Agent.find(params[:agent_id])
      brand = Brand.find(params[:brand_id])
      agent.brands << brand
      
      redirect_to :action => 'edit', :id => agent.id
    end

  end
end
