class ProductController < ApplicationController
  
  def index
    products = Product.all.order(created_at: 'DESC')
    render json: { status: 'SUCCESS', products: products }
  end

  def show
    product = Product.find(params[:product_id])
    render json: { status: 'SUCCESS', product: product }
  end

  #def location
    #product = Product.find(params[:id])
    #location = Location.find_by(id: product.location_id)
    #render json: product
  #end
  
end