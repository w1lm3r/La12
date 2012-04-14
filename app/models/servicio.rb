class Servicio < ActiveRecord::Base
	has_many :alquile_servicios
	has_many :alquilers, :through => :alquile_servicios
	
	validates_uniqueness_of :tipo, :message => "--El tipo de servicio ya ha sido Ingresado"
	validates_presence_of :tipo, :message => "--Ingrese un tipo de servicio por favor"
	validates_presence_of :descripcion, :message => "--Ingrese la descripcion por favor"
	validates_presence_of :tarifa, :message => "--Ingrese la tarifa por favor"
		
end
