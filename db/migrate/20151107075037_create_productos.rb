class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :producto
      t.string :descripcion
      t.decimal :precio

      t.timestamps null: false
    end
  end
end
