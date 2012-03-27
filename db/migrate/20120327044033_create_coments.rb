class CreateComents < ActiveRecord::Migration
  def change
    create_table :coments do |t|
      t.string :texto
      t.integer :calificacion

      t.timestamps
    end
  end
end
