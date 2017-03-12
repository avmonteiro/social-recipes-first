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
			
			fill_in 'Nome da Receita', 			          	with: recipe.name			
			fill_in 'Cozinha', 				 								  with: recipe.cuisine
			fill_in 'Tipo de Comida', 									with: recipe.kind_food
			fill_in 'Quantas pessoas servem',						with: recipe.many_peaple
			fill_in 'Tempo de preparo', 								with: recipe.preparation_time
			fill_in 'Nível de dificuldade', 						with: recipe.difficulty_level
			fill_in 'Ingredientes', 										with: recipe.ingredients
			fill_in 'Passo a passo', 										with: recipe.step_by_step
						
			click_on 'Cadastrar Receita'

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



    