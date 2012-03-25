class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :tipo
      t.string :descripcion
      t.decimal :tarifa

      t.timestamps
    end
  end
end
