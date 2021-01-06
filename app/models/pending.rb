class Pending < ApplicationRecord
    scope :user_pending, -> (user_id) { where(user_id: user_id).order(created_at: :DESC).first }
end
