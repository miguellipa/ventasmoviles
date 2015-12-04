class CreateDescuentoClientes < ActiveRecord::Migration
  def change
    create_table :descuento_clientes do |t|
      t.decimal :descuento
      t.string :descripcion
      t.belongs_to :cliente, index: true
      t.timestamps null: false
    end
  end
end
