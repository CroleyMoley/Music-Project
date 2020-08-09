 Using Ruby on Rails for the project
 #self explained

 Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
 #artist has_many equalizers #users has_many artists

 Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
 #artist belongs_to genre and user

 Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
 #artist has_many users through equalizers, user has_many equalized_artists through equalizers

 Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
 #has_many :equalized_artists, through: :equalizers, source: :artist 

 The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
 #<li><%= e.artist.artist_name %>: <%= link_to e.settings, equalizer_path(e) %></li> 
 
 Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
  #validates :artist_name, presence: true, uniqueness: true
  #validate :no_duplicate

 Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
 #@equalizer = current_user.equalizers.build(equalizer_params)

 Include signup (how e.g. Devise)
 #see routes

 Include login (how e.g. Devise)
 #see routes

 Include logout (how e.g. Devise)
 #see routes
 Include third party signup/login (how e.g. Devise/OmniAuth)
 #see routes
 Include nested resource show or index (URL e.g. users/2/recipes)
 #users/1/equalizers
 Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
 #users/1/equalizers/new

 Include form display of validation errors (form URL e.g. /recipes/new)
#flash[:error] = "Login Credentials are Invalid. Please Try Again."

Confirm:

 The application is pretty DRY
 #check

 Limited logic in controllers
 #check

 Views use helper methods if appropriate
 #check

 Views use partials if appropriate
 #check