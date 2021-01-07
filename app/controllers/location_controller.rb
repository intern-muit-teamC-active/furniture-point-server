class LocationController < ApplicationController
    def getposition
        location = Location.find_location(params)
        render json: { status: "SUCCESS", data: { x: location.x, y: location.y, map_image: location.shop.imageurl } }
    end

end    