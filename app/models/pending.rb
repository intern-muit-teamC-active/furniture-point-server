class Pending < ApplicationRecord
    belongs_to :user

    def self.user_pending(user_id)
        where(user_id: user_id).order(created_at: :DESC).first
    end    
end
