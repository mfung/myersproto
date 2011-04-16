module NavigationHelpers
  module Refinery
    module Agents
      def path_to(page_name)
        case page_name
        when /the list of agents/
          admin_agents_path

         when /the new agent form/
          new_admin_agent_path
        else
          nil
        end
      end
    end
  end
end
