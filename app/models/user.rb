class User < ApplicationRecord
    has_many :pendings

    def self.loginable?(params)
        find_by(name: params[:username], password: params[:password])
    end

    def self.add_point(user_id,point)
        user = find(user_id)
        current_point = user.point
        return {status: "ERROR", message: "ポイントが不足しています。"} unless current_point + point >= 0

        if user.update!(point: current_point + point)
            {status: "SUCCESS", data: { before_point: current_point, point_different: point, current_point: user.point, user_id: user.id } }
        else
            {status: "ERROR", data: user.errors }
        end    
    end    
end
