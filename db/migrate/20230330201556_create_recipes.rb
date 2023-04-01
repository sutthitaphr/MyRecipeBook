class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :recipe_name
      t.string :cooking_length
      t.string :ingred_no

      t.timestamps
    end
  end
end
