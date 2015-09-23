=README
== Mine Example

== Lesson 1: How to use sessions in Ruby-on-Rails?

== Objectives
Create session value
Update session value
Remove session value
Reset session all values

==Steps to replicate this example
1. Run "bundle install"
2. Run "rails g scaffold country name:string alpha:string code:string"
3. Copy content of seeds.rb 
4. Run "rake db:migrate"
5. Run "rake db:seed"
6. Modify routes.rb add these lines
  match "name/:id", :controller=>:countries, :to => :name, :via=>:get, :as=>:name
  match "alpha2/:id", :controller=>:countries, :to => :alpha2, :via=>:get, :as=>:alpha2
  match "code/:id", :controller=>:countries, :to => :code, :via=>:get, :as=>:code
  match "remove/:key", :controller=>:countries, :to => :remove, :via=>:get, :as=>:remove
  match "reset", :controller=>:countries, :to => :reset, :via=>:get, :as=>:reset
  root "countries#index"
7. Modify views/countries/index.html.erb
8. Modify countries controllers/countries_controller.rb