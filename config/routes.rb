Rails.application.routes.draw do
  resources :posts
  get 'forum/index'
  # Home Page (Landing on the Forum)
  root "forum#index"

  # Forum (Shire Bulletin Board) - Full CRUD + Likes/Dislikes + Comments
  resources :forum do
    resources :comments, only: [:create, :destroy]  # Users can comment on forum posts

    # Like/Dislike System (Users can toggle reactions per post)
    member do
      post 'toggle_reaction'  # Handles both liking and disliking
    end
  end

  # World News (Just viewing, no user submissions)
  resources :world_news, only: [:show]

  # Events (Public Notice Board) - Full CRUD
  resources :events

  # About Page (Optional Future Feature)
  get 'about', to: 'pages#about'

  # Contact Page (Optional Future Feature)
  get 'contact', to: 'pages#contact'
end
