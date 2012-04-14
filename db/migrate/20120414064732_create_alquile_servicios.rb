class CreateAlquileServicios < ActiveRecord::Migration
  def change
    create_table :alquile_servicios do |t|
      t.string :alquiler_id
      t.string :servicio_id

      t.timestamps
    end
  end
end
