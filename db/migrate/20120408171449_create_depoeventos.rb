class CreateDepoeventos < ActiveRecord::Migration
  def change
    create_table :depoeventos do |t|
      t.string :nombre
      t.string :premio
      t.integer :maxequipos
      t.datetime :del
      t.datetime :al

      t.timestamps
    end
  end
end
