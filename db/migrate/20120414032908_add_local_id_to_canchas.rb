class AddLocalIdToCanchas < ActiveRecord::Migration
  def change
    add_column :canchas, :local_id, :integer
  end
end
