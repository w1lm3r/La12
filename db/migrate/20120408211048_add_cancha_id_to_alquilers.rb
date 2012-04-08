class AddCanchaIdToAlquilers < ActiveRecord::Migration
  def change
    add_column :alquilers, :cancha_id, :integer
  end
end
