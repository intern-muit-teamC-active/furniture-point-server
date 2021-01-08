class LocationController < ApplicationController
    def getposition
        location = Location.find_location(params)
        render json: { status: "SUCCESS", data: { map_url: location.map_url, map_image: location.shop.imageurl } }
    end

end    