Rails.application.routes.draw do
  get "/shortkeys/new", to: "shortkeys#new"
  post "/shortkeys", to: "shortkeys#create"
end
