class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :tipo
      t.string :nombre
      t.string :apepat
      t.string :apemat
      t.string :sexo
      t.string :tipdoc
      t.string :numdoc
      t.string :correo
      t.string :password
      t.date :fecnac
      t.string :telefono

      t.timestamps
    end
  end
end
