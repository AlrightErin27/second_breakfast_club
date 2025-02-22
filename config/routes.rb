Rails.application.routes.draw do
  get 'forum/index'
  # Home Page (Landing on the Forum)
  root "posts#index"  # Use the PostsController index action as the root

  # Forum (Shire Bulletin Board) - Full CRUD + Likes/Dislikes + Comments
  resources :forum, controller: 'posts' do
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

end
