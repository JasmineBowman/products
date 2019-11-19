
#   products = Product.create(
#     {name: 'Towels'}, 
#     {department:'Bath'},
#     {price: 9.99},
#     {description: 'warm and fluffly'}
#     )


# def index
#     @products=Product.all
#     render 'index.json.jb'
#   end

#   def show
#     @product = Product.find_by(id: params[:id])
#     render 'show.json.jb'
#   end

#   def create
#     @product = Product.new(
#       id: params[:id],
#       name: params[:name],
#       department: params[:department],
#       price: params[:price]
#       )
#     @product.save
#     render 'show.json.jb'
#   end

#   def update
#     @product = Product.find_by(id: params[:id])
#     @product.update(
#       name: params[:name], 
#       department: params[:department], 
#       price: params[:price]
#       ) 
#     @product.save
#     render 'show.json.jb'
#   end

#   def destroy
#     @product = Product.find_by(id:params[:id])
#     @product.destroy
#     render 'destroy.json.jb'
#   end
# end


# Rails.application.routes.draw do
#   # EXAMPLE HTML ROUTE
#   # get "/photos" => "photos#index"

#   # EXAMPLE JSON ROUTE WITH API NAMESPACE
#   namespace :api do
#     get "/products" => "minicapstones#index"
#     get "/products/:id" => "products#show"
#     post "products" => "products#create"
#     patch "/products/:id" => "products#update"
#     delete "/products/:id" => "products#destroy"
#   end
# end



# @products.map do |product|
#   {
#     id: product.id,
#     name: product.name,
#     department: product.department,
#     price: product.price
#   }
# end


#  {
#     id: product.id,
#     name: product.name,
#     department: product.department,
#     price: product.price
#   }
# end


# class Product < ApplicationRecord

#     # what validations should a product have?
#     # max price of 100
#     # minimum price of 1
#   validates :price, numericality: {less_than_or_equal_to: 10000, greater_than_or_equal_to: 1}
#     # name unique
#   validates :name, uniqueness: true
#     # description minimum 10 characters
#   validates :department, length: {minimum: 4}

#   def is_discounted?
#     !(price<100)
#   end
# end

# class Supplier < ApplicationRecord
#   def supplier
#     @name = supplier.name,
#     @email = supplier.email,
#     @phone = supplier.phone
#   end
# end



# ActiveRecord::Schema.define(version: 2019_11_15_022320) do

#   # These are extensions that must be enabled in order to support this database
#   enable_extension "plpgsql"

#   create_table "products", force: :cascade do |t|
#     t.string "name"
#     t.string "department"
#     t.integer "price"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

#   create_table "suppliers", force: :cascade do |t|
#     t.string "name"
#     t.string "email"
#     t.integer "phone"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

# end

# EXERCISE: 
# . In the Product model, make a supplier method to get the associated supplier. Test the code in the rails console with something like:
# product = Product.first
# product.supplier
# 2. Change your app to show the supplier’s info with each product.

# EXERCISE 2: 
# 1. Change your mini_capstone so there can be multiple images, instead of just one. (This will take multiple steps!) You will need to remove the image_url attribute from the Product model and create an entirely new Image model to do this. Use url as the image attribute to get this to work seamlessly with the mini-capstone front end.

# 1. Create Images Table
# this table will have an id and a url - 

# 2. Consider the one to many equation. 
# Determine where the 'foreign key' goes - the foreign key is added to the table that is 

# The foreign key goes onto the table that is many to one verify logic) 

# One product can have have many images. So there is an images table and the product_id (the fk) will be input (added) to the images table. 

# So the fk is added to the 'belongs to one' table. Here, the images table - each row will have a specific product_id, each image can only be associated with one product - but a product can have many images.

# Coding: 

Have product table 
We need to modify a column - need a migration. 

Remove image URL from Products - Check Migrations cheatsheet - go to remove column. 

Product Id is on the images table because a product can have many different images - an image can only have one product. 

FK is always on the belongs to table































2. Change your json view to show all images with each product.
3. Bonus: Fix your product create and update actions! (They are broken because you changed how images are saved…)
4. Bonus: Make it so a user can create new images for a given product.
Commit and push your changes (A friendly reminder!)
You can test your code using the frontend at https://mini-capstone.netlify.com/#/model-associations/products. If your associations are working correctly, it will show multiple images on the products show page in a carousel!