class Recipe < ApplicationRecord

	validates :name, :cuisine, :kind_food, :ingredients, :step_by_step, presence: true


end
