class Pending < ApplicationRecord
    belongs_to :user
    
    scope :user_pending, -> (user_id) { where(user_id: user_id).order(created_at: :DESC).first }
end
