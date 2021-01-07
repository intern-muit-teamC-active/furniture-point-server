class Location < ApplicationRecord
    belongs_to :product
    belongs_to :shop

    def self.find_location(params)
        find_by(product_id: params[:product_id], shop_id: params[:shop_id])
    end
end