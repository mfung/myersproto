class AgentsController < ApplicationController

  before_filter :find_all_agents
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @agent in the line below:
    present(@page)
  end

  def show
    @agent = Agent.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @agent in the line below:
    present(@page)
  end
  
  def find
    @page.title = 'Find an Agent'
    @events = Event.find(:all)
    present(@page)
  end
  
  def find_an_agent
    @page.title = 'Find an Agent'
    @brands = Brand.find(:all).sort_by(&:name)
    @territories = Agent.territories
    present(@page)
  end
  
  def results
    @page.title = 'Agent(s) Found'
    @brands = Brand.find(:all).sort_by(&:name)
    @territories = Agent.territories
    @agents = Agent.find_by_territory_and_brand(params[:territory],params[:brand_id])
  end

protected

  def find_all_agents
    @agents = Agent.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/agents").first
  end

end
