Rails.application.routes.draw do
  resources :pay_accounts, only: %i[index new create]

  root 'pay_accounts#index'
end
