class UserController < ApplicationController

    def login
        user = User.loginable?(params)
        if user
            render json: { status: "SUCCESS", data: user}
        else
            render json: { status: "ERROR", message: "ユーザーが存在しません。"}
        end    
    end    
 
end