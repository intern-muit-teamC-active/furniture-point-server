class Review < ApplicationRecord
    belongs_to :product

    enum kind: [ :purchase, :display]

    def self.find_by_product(product_id)
        where(product_id: product_id)
    end    
end
