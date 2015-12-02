class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.text :nombre
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
