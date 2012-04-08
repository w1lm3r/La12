class AddPersonaIdToCanchas < ActiveRecord::Migration
  def change
    add_column :canchas, :persona_id, :integer
  end
end
