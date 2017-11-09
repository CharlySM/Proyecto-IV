Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  get 'equipos' => 'welcome#equipos'
  get 'clasificacion' => 'welcome#clasificacion'
  get 'jornada' => 'welcome#jornada'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
