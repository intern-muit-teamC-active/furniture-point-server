class QrController < ApplicationController

    def read
        qr = Qr.find(params[:qr_id])
        user = User.find(params[:user_id])
        case qr.kind
        when "purchase"
            render json: Qr.purchase(user)
        when "display"
            render json: Qr.display(user,qr.point)
        when "enter"
            render json: Qr.enter(user,qr.point)
        else
            render json: { status: "ERROR", message: "データが不正です。"}
        end               
    end
    
    
 
end