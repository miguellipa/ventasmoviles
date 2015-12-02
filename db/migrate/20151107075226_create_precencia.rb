class CreatePrecencia < ActiveRecord::Migration
  def change
    create_table :precencia do |t|
      t.time :hora
      t.text :observacion
      t.belongs_to :cliente, index: true
      t.belongs_to :persona, index: true
      t.text :nombre_precencia
      
      t.belongs_to :producto, index: true
      t.integer :cantidad
      t.timestamps null: false
    end
  end
end
