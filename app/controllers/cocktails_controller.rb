class CocktailsController < ApplicationController
    def index
        @cocktails = Cocktail.all
    end

    def new
        @cocktail = Cocktail.new
    end

    def create
        @cocktail = Cocktail.new(cocktail_params)

        if @cocktail.save
        redirect_to @cocktail, notice: 'A Cocktail was successfully created.'
        else
        render :new
        end
    end

    def show
        @cocktail = Cocktail.find(params[:id])
    end
end
