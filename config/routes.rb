Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:show, :index] do #gives us access to authors/:author_id/posts/new
    resources :posts, only: [:show, :index, :new, :edit] #and new_author_post_pathn 
  end

  resources :posts 
end
