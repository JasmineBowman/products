class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render 'index.json.jb'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      department: params[:department],
      price: params[:price],
      description: params[:description]
      )
    @product.save
    render 'show.json.jb'
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name], 
      department: params[:department], 
      price: params[:price],
      description: params[:description]
      ) 
    @product.save
    render 'show.json.jb'
  end

  def destroy
    @product = Product.find_by(id:params[:id])
    @product.destroy
    render 'destroy.json.jb'
  end
end