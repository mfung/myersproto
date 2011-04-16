module Admin
  class AgentsController < Admin::BaseController

    crudify :agent,
            :title_attribute => 'name', :xhr_paging => true

  end
end
