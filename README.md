# Second Breakfast Club - Development Documentation

## Purpose of the App
Second Breakfast Club is a *Nextdoor*-style forum for the Shire and beyond, allowing hobbits and other Middle-earth residents to communicate about local happenings, world events, and upcoming gatherings. The primary goal of this project is to help Erin gain hands-on experience with Ruby on Rails, particularly in the tech stack used at their company, while also creating a fun and engaging application.

## Development Approach
- **Step-by-step process:** We will work on each feature incrementally, checking in often to ensure understanding and correct implementation.
- **No authentication:** The user always starts logged in as *Lobelia Sackville-Baggins*, known for her nosiness and penchant for stealing spoons.
- **Pre-seeded database:** To make the app feel lively, we will seed the database with posts, comments, and interactions from famous Middle-earth characters.

## Routes
Rails.application.routes.draw do
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


## Tech Stack
- **Ruby Version:** 2.7.8
- **Rails Version:** 5.2.8.1
- **Database:** PostgreSQL 14.16
- **CSS Framework:** Foundation 6 (via foundation-rails gem)
- **Front-end:** SCSS, Foundation
- **Back-end:** Ruby on Rails (MVC architecture)
- **Package Management:** Bundler
- **JS Handling:** CoffeeScript (via coffee-rails)
- **Debugging Tools:** Byebug, Pry-rails
- **Asset Management:** Sprockets, Uglifier

## App Structure
- **Forum (Local Chatter)** - Users (hobbits and other characters) can:
  - Create, edit, and delete their own posts.
  - Comment on posts.
  - Like or dislike posts (but only one at a time, toggling between them).
- **World News (Beyond the Shire)** - A static page displaying news from the rest of Middle-earth.
- **Upcoming Gatherings (Hobbit Happenings)** - Users can:
  - Create, edit, and delete their own events.
  - View events posted by others.

## Routes Setup
- **Full CRUD for Forum Posts & Events** (users can create, read, update, delete)
- **Show-only for World News**
- **Custom routes for liking/disliking forum posts**

## Database Seeding
To make the app feel alive, we will populate the database with funny and immersive posts and interactions:

### Example Forum Posts:
- **Lobelia Sackville-Baggins:** *"Someone has been walking on my grass again. Disgraceful! I demand an explanation!"*
- **Samwise Gamgee:** *"Looking for volunteers to help plant a new vegetable garden by Bag End. Payment in fresh taters."*
- **Gandalf the Grey:** *"Looking for a group to go on a great adventure. Must be brave, at least semi-competent, and have a decent singing voice."*
- **Meriadoc Brandybuck:** *"Has anyone seen Pippin? Last spotted near the Green Dragon muttering something about second second breakfast."*

### Example Comments:
- **Frodo Baggins (replying to Sam):** *"I’ll help, Sam! But only if you promise not to let me do all the heavy lifting."*
- **Peregrin Took (replying to Merry):** *"I am NOT lost, I am on a culinary journey."*
- **Bilbo Baggins (replying to Gandalf):** *"I highly discourage responding to this advertisement. Trust me."*
- **Gollum (replying to Lobelia):** *"Grass is soft. We likes it. Not sorry."*

## Next Steps
1. **Implement Navbar and Navigation Logic**
2. **Create Views for Forum, Events, and World News**
3. **Set Up Forum Post CRUD (Model, Controller, Views)**
4. **Implement Likes/Dislikes Feature**
5. **Seed Database with Initial Data**
6. **Style Pages Using Foundation**
7. **Ensure All Features Are Functional and Debug Issues**

With this document, we will be able to work methodically and avoid repeating issues encountered previously. Let’s take it step by step and check in frequently!

