Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do 
    namespace :v1 do 
      resources :stock_symbols, only: [:index, :show]
      get 'search/:search_term', to: 'stock_symbols#search'
    end
  end
end
