class QrController < ApplicationController

    def add_point
        qr = Qr.find(params[:qr_id])
        user = User.find(params[:user_id])
        case qr.kind
        when purchase
            render json: Qr.purchase(user)
        when display

        when enter

        when use

        else

        end               

        render json: { status: 'SUCCESS', reviews: Review.find_by_product(params[:product_id]) }
    end
    
    
 
end