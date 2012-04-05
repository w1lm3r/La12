class CreateCanchas < ActiveRecord::Migration
  def change
    create_table :canchas do |t|
      t.string :nombre
      t.text :caracteristica
      t.boolean :alunes
      t.boolean :amartes
      t.boolean :amiercoles
      t.boolean :ajueves
      t.boolean :aviernes
      t.boolean :asabado
      t.boolean :adomingo
      t.string :hLunes
      t.string :hMartes
      t.string :hMiercoles
      t.string :hJueves
      t.string :hViernes
      t.string :hSabado
      t.string :hDomingo
      t.decimal :lunesT1
      t.decimal :lunesT2
      t.decimal :martesT1
      t.decimal :martesT2
      t.decimal :miercolesT1
      t.decimal :miercolesT2
      t.decimal :juevesT1
      t.decimal :juevesT2
      t.decimal :viernesT1
      t.decimal :viernesT2
      t.decimal :sabadoT1
      t.decimal :sabadoT2
      t.decimal :domingoT1
      t.decimal :domingoT2
      t.text :promocion
      t.binary :foto

      t.timestamps
    end
  end
end
