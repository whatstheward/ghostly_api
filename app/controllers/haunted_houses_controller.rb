class HauntedHousesController < ApplicationController

    def index
        @haunted_houses = HauntedHouse.all
        @json_houses = HauntedHouseSerializer.new(@haunted_houses).serialized_json
        render json: @json_houses
    end
end
