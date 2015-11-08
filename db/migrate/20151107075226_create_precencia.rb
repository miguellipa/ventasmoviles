class CreatePrecencia < ActiveRecord::Migration
  def change
    create_table :precencia do |t|
      t.time :hora
      t.text :observacion

      t.timestamps null: false
    end
  end
end
