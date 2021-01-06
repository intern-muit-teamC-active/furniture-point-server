class QrController < ApplicationController

    def add_point
        params[:qr_id]
        params[:user_id]
        render json: { status: 'SUCCESS', reviews: Review.find_by_product(params[:product_id]) }
    end
    
    def create
        review = Review.new(review_params)
        if review.save
            render json: { status: 'SUCCESS', data: review} 
        else
            render json: { status: 'ERROR', reviews: Review.find_by_product(params[:product_id]), data: review.errors }
        end
    end
    
 
end