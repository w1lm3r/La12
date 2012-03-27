class CreateEventodepos < ActiveRecord::Migration
  def change
    create_table :eventodepos do |t|
      t.string :nombre
      t.decimal :premio
      t.integer :cantidad
      t.datetime :plazoinsc

      t.timestamps
    end
  end
end
