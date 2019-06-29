Rails.application.routes.draw do
  root 'topics#index'
  # get '/topics/:id' => 'topics#show', as: 'topic'
  # get '/topics/new' => 'topics#new'
  # get '/topics/edit' => 'topics#edit'
  
  resources :topics do 
    member do 
      post 'upvote'
      post 'downvote'
    end 
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
