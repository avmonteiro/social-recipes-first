class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :cuisine
      t.string :kind_food
      t.string :many_peaple
      t.string :preparation_time
      t.string :difficulty_level
      t.string :ingredients
      t.string :step_by_step

      t.timestamps
    end
  end
end
