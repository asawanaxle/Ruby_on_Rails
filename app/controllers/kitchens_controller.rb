class KitchensController < ApplicationController

    def show
        @kitchen = Kitchen.find(params[:id])
    end
end