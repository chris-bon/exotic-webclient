Rails.application.routes.draw do
  get 'animals/:id' => 'animals#show'
end
