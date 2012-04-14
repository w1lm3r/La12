class Alquiler < ActiveRecord::Base
	belongs_to :cancha
	belongs_to :persona
	has_many :alquile_servicios
	has_many :servicios , :through => :alquile_servicios
	validates_presence_of :persona_id, :message => "--Seleccione la persona por favor"
	validates_presence_of :cancha_id, :message => "--Seleccione una cancha por favor"
end
