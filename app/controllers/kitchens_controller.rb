class KitchensController < ApplicationController

    def show
        @kitchen = Kitchen.find(params[:id])
    end
    def index
        @kitchens = Kitchen.all
    end
    def new
        @kitchen = Kitchen.new
    end

    def edit
        @kitchen = Kitchen.find(params[:id])
    end

    def create
        @kitchen = Kitchen.new(params.require(:kitchen).permit(:Item_Title,:Units))
        if @kitchen.save
            flash[:notice] = "Item added successfully"
            redirect_to @kitchen
        else
            render 'new'
        end
    end

    def update
        @kitchen = Kitchen.find(params[:id])
        if @kitchen.update(params.require(:kitchen).permit(:Item_Title,:Units))
            flash[:notice] = "Item edited successfully"
            redirect_to @kitchen
        else
            render 'edit'

        end
    end

    def destroy 
        @kitchen = Kitchen.find(params[:id])
        @kitchen.destroy
        redirect_to kitchens_path
    end
end