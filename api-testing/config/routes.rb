Rails.application.routes.draw do
  resource :products, only: [:create, :show]
  resource :users do
    get '/', to: 'users#index'
    get '/:id', to: 'users#show'
    post '/', to: 'users#create'
  end
end
