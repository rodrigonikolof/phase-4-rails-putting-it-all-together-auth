class RecipesController < ApplicationController

    def index
        recipe = Recipe.all
        render json: recipe
    end

    def create
        recipe = @current_user.recipes.create!(recipe_params)
        render json: recipe, status: :created
    end

    private

    def recipe_params
        params.permit(:title, :minutes_to_complete, :instructions)
    end

end
