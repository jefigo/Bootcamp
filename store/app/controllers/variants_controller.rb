class VariantsController < ApplicationController
	def index
      @variants = Variant.all
     end

  def new
    @variant = Variant.new

  end

  def create
    @variant = Variant.new params[:variant]

    if @variant.valid?
       @product_variant.save
      return redirect_to product_variant_path, notice: "Your product #{@variant.color} has been created!"
    end
   render :new
  end

  def show
    @variant = Variant.find_by_id params[:id]
  end

  def edit
    @variant = Variant.find_by_id params[:id]
  end

  def update
    @variant = Variant.find_by_id params[:id]

    if @Variant.update_attributes params[:product]
      return redirect_to variants_path, notice: "Your product #{@product.name} has been updated!"
    end

    render :edit
  end
end
