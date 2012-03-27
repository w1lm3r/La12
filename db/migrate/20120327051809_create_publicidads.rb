class CreatePublicidads < ActiveRecord::Migration
  def change
    create_table :publicidads do |t|
      t.string :titulo
      t.string :contenido
      t.date :fecinicio
      t.date :fecfin
      t.decimal :tarifa
      t.integer :numclics
      t.string :ubicacion

      t.timestamps
    end
  end
end
