class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :img_url
      t.string :detail
      t.timestamps
    end
  end
end
