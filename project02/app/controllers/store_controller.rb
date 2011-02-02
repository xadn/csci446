class StoreController < ApplicationController
  
  def index
    @products = Product.find_products_for_sale
    @cart = find_cart
  end
  
  def add_to_cart
    product = Product.find(params[:id]) 
    @cart = find_cart                   
    @cart.add_product(product)
    redirect_to_index
  rescue
    logger.error("Attempt to access invalid product #{params[:id]}")
    flash[:notice] = "Invalid product"
    redirect_to :action => 'index'
  end
  
  def empty_cart
    session[:cart] = nil
    flash[:notice] = "Your cart is currently empty"
    redirect_to :action => 'index'
  end
  
  private
  
    def redirect_to_index(msg = nil)
      flash[:notice] = msg if msg
      redirect_to :action => 'index'
    end
  
    def find_cart
      session[:cart] ||= Cart.new
    end

end
