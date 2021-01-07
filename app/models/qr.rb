class Qr < ApplicationRecord
    enum kind: [ :purchase, :display, :enter ]

    def self.purchase(user)
        pending = Pending.user_pending(user.id)
        return {status: "ERROR", message: "使用ポイントが不正です。"} unless pending.total_price - pending.use_point >= 0
        estimate_point = (pending.total_price - pending.use_point) / 10 - pending.use_point

        data = User.add_point(user.id,estimate_point)

        data[:data].store("use_point",pending.use_point)
        data[:data].store("get_point",(pending.total_price - pending.use_point) / 10)
        #今回は最新のpendingを持ってくるためdestroyはいらない
        #pending.destroy

        data
    end
    
    def self.display(user,point)
        User.add_point(user.id,point)
    end
    
    def self.enter(user,point)
        User.add_point(user.id,point)
    end
end
