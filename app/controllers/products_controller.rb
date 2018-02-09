class ProductsController < ApplicationController
  def index   
   @products = Product.all.paginate(page: params[:page], per_page: 10)

  end   
   
  # GET method to get a product by id   
  def show   
    @product = Product.find(params[:id])   
  end   
   
  # GET method for the new product form   
  def new   
    @product = Product.new   
  end   
   
  # POST method for processing form data   
  def create   
    @product = Product.new(product_params)   
    if @product.save   
      flash[:notice] = 'Product  successfully added!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to edit product!'   
      render :new   
    end   
  end   
   
   # GET method for editing a product based on id   
  def edit   
    @product = Product.find(params[:id])   
  end   
   
  # PUT method for updating in database a product based on id   
  def update   
    @product = Product.find(params[:id])   
    if @product.update_attributes(product_params)   
      flash[:notice] = 'Product updated!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to edit product!'   
      render :edit   
    end   
  end   
   
  # DELETE method for deleting a product from database based on id   
  def destroy   
    @product = Product.find(params[:id])   
    if @product.delete   
      flash[:notice] = 'Product successfully  deleted!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to delete this product!'   
      render :destroy   
    end   
  end   
   
  # we used strong parameters for the validation of params   
  def product_params   
    params.require(:product).permit(:name, :price, :old_price, :short_description, :full_description)   
  end   
   
end  