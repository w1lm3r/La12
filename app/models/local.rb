class Local < ActiveRecord::Base
has_many :canchas
	validates_uniqueness_of :nombre, :message => "--El nombre del local ya ha sido Ingresado"
	validates_presence_of :nombre, :message => "--Ingrese un nombre de local por favor"
	validates_presence_of :direccion, :message => "--Ingrese la direccion por favor"
	validates_presence_of :distrito, :message => "--Ingrese el distrito por favor"
	validates_presence_of :telefono, :message => "--Ingrese el telefono por favor"

end
