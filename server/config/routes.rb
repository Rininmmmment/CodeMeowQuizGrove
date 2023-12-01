Rails.application.routes.draw do
  # - GET /users： ユーザー一覧を取得
  # - GET /users/:id：特定のユーザーの詳細を取得
  # - POST /users：ユーザーを作成
  # - PATCH/PUT /users/:id：特定のユーザーを更新
  # - DELETE /users/:id：特定のユーザーを削除

  # Users
  resources :users, controller: 'user', only: [:index, :show, :create, :update, :destroy]

  # Chapters
  resources :chapters, controller: 'chapter', only: [:index, :show, :create, :update, :destroy]

  # Sections
  resources :sections, controller: 'section', only: [:index, :show, :create, :update, :destroy]

  # Results
  resources :results, controller: 'result', only: [:index, :show, :create, :update, :destroy]

  # Quizzes
  resources :quizze, controller: 'quiz', only: [:index, :show, :create, :update, :destroy]

  # Sessions
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post '/islogin', to: 'application#logged_in?'
end
