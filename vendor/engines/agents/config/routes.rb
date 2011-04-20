Refinery::Application.routes.draw do
  resources :agents, :only => [:index, :show]
  match 'find_an_agent/:city/:state/:product_id' => 'agents#find' 
  
  
  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :agents, :except => :show do
      collection do
        post :update_positions
      end
    end
    match '/agent/remove_brand' => 'agents#remove_brand', :via => :post
    match '/agent/add_brand' => 'agents#add_brand', :via => :post
  end
end
