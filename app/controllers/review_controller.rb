class ReviewController < ApplicationController

    def index
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
    
    private

    def review_params
        params.require(:review).permit(:product_id,:type,:comment,:recommend)
    end    
 
end