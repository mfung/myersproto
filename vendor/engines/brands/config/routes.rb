Refinery::Application.routes.draw do
  resources :brands, :only => [:index, :show]
  match 'brands/:id/:slug' => 'brands#show' 
  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :brands, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
