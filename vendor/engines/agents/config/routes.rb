Refinery::Application.routes.draw do
  
  match '/agents/find_an_agent' => 'agents#find_an_agent'
  match '/agents/results' => 'agents#results', :via => :post
  resources :agents, :only => [:index, :show]
  
  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    match '/agents/remove_brand' => 'agents#remove_brand', :via => :post
    match '/agents/add_brand' => 'agents#add_brand', :via => :post
    resources :agents, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
