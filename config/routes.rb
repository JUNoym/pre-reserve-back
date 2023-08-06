Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json }, path: '', controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'  # ここを追加
  }, path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  }
  
end
