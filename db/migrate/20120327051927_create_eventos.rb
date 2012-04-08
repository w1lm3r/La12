class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :nombre
      t.decimal :premio
      t.integer :cantidad
      t.date :plazoinsc

      t.timestamps
    end
  end
end
