class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
    set_product
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path, :notice => "#{@product.name} was successfully created!"
    else
      render :new
    end
  end

  def update
    if @product.update(product_params)
      redirect_to products_path, notice: "#{@product.name} was successfully updated."
    else
      render products_edit_path
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path, notice: "#{@product.name} was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :price, :category, :product_type, :picture, :description)
    end
end
