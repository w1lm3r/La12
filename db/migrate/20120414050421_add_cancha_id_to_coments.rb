class AddCanchaIdToComents < ActiveRecord::Migration
  def change
    add_column :coments, :cancha_id, :integer
  end
end
