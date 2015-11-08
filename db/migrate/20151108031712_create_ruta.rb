class CreateRuta < ActiveRecord::Migration
  def change
    create_table :ruta do |t|
      t.date :fecha
      t.belongs_to :cliente, index: true
      t.belongs_to :usuario, index: true
      t.timestamps null: false
    end
  end
end
