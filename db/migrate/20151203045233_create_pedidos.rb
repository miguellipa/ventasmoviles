class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.belongs_to :precencia, index: true
      t.date :fecha
      t.decimal :total

      t.timestamps null: false
    end
  end
end
