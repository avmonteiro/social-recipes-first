class RecipesController < ApplicationController

	def new
		@recipe = Recipe.new
	end
		def create
			recipe_params = params.require(:recipe).permit(:name, :cuisine, :many_peaple, :preparation_time, :difficulty_level, :kind_food, :ingredients, :step_by_step)
			@recipe = Recipe.new(recipe_params)
			if @recipe.save
			redirect_to  @recipe
			else
				flash[:errors] = 'Por favor preencher os campos obrigatórios'
				render :new
			end

		end

		def show
			@recipe = Recipe.find(params[:id])
		end
end



