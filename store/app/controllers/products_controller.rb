class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new active: true
    @categories = Category.all
  end

  def create
    @product = Product.new params[:product]

    if @product.valid?
      @product.save
      return redirect_to products_path, notice: "Your product #{@product.name} has been created!"
    end

   @categories = Category.all
   #render :new
  end

  def show
    @product = Product.find_by_id params[:id]
  end

  def edit
    @product = Product.find_by_id params[:id]
    @categories = Category.all
  end

  def update
    @product = Product.find_by_id params[:id]

    if @product.update_attributes params[:product]
      return redirect_to products_path, notice: "Your product #{@product.name} has been updated!"
    end

    @categories = Category.all
    render :edit
  end
end
