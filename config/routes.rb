Rails.application.routes.draw do
  root 'router#index'

  get '*', to: 'router#index'
end
