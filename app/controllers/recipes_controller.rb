class RecipesController < ApplicationController
	before_filter :authorize, except: [:index, :show]

	def index
		@recipes = Recipe.all
		render :index	
	end

	def new
		@recipe = Recipe.new
		render :new
	end

	def create
		recipe = current_user.recipes.new(recipe_params)
		if recipe.save
			redirect_to recipe_path(recipe)
		else
			redirect_to new_recipe_path
		end
	end

	def show
		@recipe = Recipe.find(params[:id])	
	end

	private
	def recipe_params
		params.require(:recipe).permit(:name, :description)
	end

end
