class CreateAlquilers < ActiveRecord::Migration
  def change
    create_table :alquilers do |t|
      t.datetime :fecha

      t.timestamps
    end
  end
end
