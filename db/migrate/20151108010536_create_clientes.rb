class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :provincia
      t.string :distrito
      t.text :direccion
      t.string :telefono
      t.text :ruc

      t.timestamps null: false
    end
  end
end
