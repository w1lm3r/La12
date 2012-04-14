class Coment < ActiveRecord::Base
belongs_to :cancha
	validates_presence_of :cancha_id, :message => "--Seleccione la cancha por favor"
	validates_presence_of :texto, :message => "--Ingrese comentario  por favor"
	validates_presence_of :calificacion, :message => "--Ingrese la calificacion por favor"
	
end
