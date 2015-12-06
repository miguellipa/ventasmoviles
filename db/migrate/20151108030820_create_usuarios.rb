class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :usuario
      t.string :password
      t.belongs_to :tipo, index: true
      t.timestamps null: false
      t.string :provincia
      t.string :distrito
      t.string :direccion
    end
  end
end
