class CreateTipos < ActiveRecord::Migration
  def change
    create_table :tipos do |t|
      t.string :tipo
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
