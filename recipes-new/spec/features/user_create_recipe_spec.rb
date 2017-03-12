require 'rails_helper'
    
	feature 'User create recipes' do 		
		scenario 'successfully' do	
			recipe = Recipe.new( name: 'Bolo Brigadeiro', 
												   cuisine: 'Outros',
												   kind_food: 'Doces',
												   many_peaple: '12', 
												   preparation_time: '1h30',
												   difficulty_level: 'Médio',
												   ingredients: 'Leite, Farinha, ovos, chocolate, margarina',
												   step_by_step: 'Misturar todos os ingredientes...')

			visit new_recipe_path
			
			
			fill_in 'Bolo Brigadeiro', 														with: recipe.name
			fill_in 'Doces', 																			with: recipe.kind_food
			fill_in 'Outros', 				 														with: recipe.cuisine
			fill_in '12',																					with: recipe.many_peaple
			fill_in '1H30', 																			with: recipe.preparation_time
			fill_in 'Médio', 																			with: recipe.difficulty_level
			fill_in 'Leite, Farinha, ovos, chocolate, margarina', with: recipe.ingredients
			fill_in 'Misturar todos os ingredientes...', 					with: recipe.step_by_step
			
			click_on 'Cadastrar nova Receita'

			
			expect(page).to have_content recipe.name
			expect(page).to have_content recipe.cuisine
			expect(page).to have_content recipe.kind_food
			expect(page).to have_content recipe.many_peaple
			expect(page).to have_content recipe.preparation_time
			expect(page).to have_content recipe.difficulty_level
			expect(page).to have_content recipe.ingredients
			expect(page).to have_content recipe.step_by_step

		end

	end



    