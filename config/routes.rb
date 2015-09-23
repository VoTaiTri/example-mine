Rails.application.routes.draw do
  resources :countries
  match "name/:id", :controller=>:countries, :to => :name, :via=>:get, :as=>:name
  match "alpha/:id", :controller=>:countries, :to => :alpha, :via=>:get, :as=>:alpha
  match "code/:id", :controller=>:countries, :to => :code, :via=>:get, :as=>:code
  match "remove/:key", :controller=>:countries, :to => :remove, :via=>:get, :as=>:remove
  match "reset", :controller=>:countries, :to => :reset, :via=>:get, :as=>:reset

  root "countries#index"
end
