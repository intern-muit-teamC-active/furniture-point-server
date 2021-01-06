class Qr < ApplicationRecord
    enum kind: [ :purchase, :display, :enter ] 
    def self.purchase(user)
        pending = Pending.user_pending(user.id)
        return {status: "ERROR", message: "使用ポイントが不正です。"} unless pending.total_price - pending.use_point >= 0
        estimate_point = (pending.total_price - pending.use_point) / 10 - pending.use_point
        User.add_point(user.id,estimate_point)
        pending.destroy
    end    
end
