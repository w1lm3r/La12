class AddPersonaIdToAlquilers < ActiveRecord::Migration
  def change
    add_column :alquilers, :persona_id, :integer
  end
end
