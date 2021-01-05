class Review < ApplicationRecord
    belongs_to :product

    enum type: [ :purchase, :display]

    scope :find_by_product, -> (product_id) { where(product_id: product_id) }
end
