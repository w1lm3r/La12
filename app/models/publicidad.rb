class Publicidad < ActiveRecord::Base
	validates_uniqueness_of :titulo, :message => "--El Titulo ya ha sido Ingresado"
	validates_presence_of :titulo, :message => "--Ingrese un titulo por favor"
	validates_presence_of :contenido, :message => "--Ingrese el contenido  por favor"
	validates_presence_of :fecinicio, :message => "--Ingrese la fecha de inicio por favor"
	validates_presence_of :fecfin, :message => "--Ingrese la fecha de fin por favor"
	validates_presence_of :tarifa, :message => "--Ingrese la tarifa por favor"
	

end
