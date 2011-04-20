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

protected

  def find_all_agents
    @agents = Agent.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/agents").first
  end

end
