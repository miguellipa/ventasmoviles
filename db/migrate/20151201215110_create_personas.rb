class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.text :nombres
      t.text :cargo
      t.belongs_to :cliente, index: true
      t.timestamps null: false
    end
  end
end
