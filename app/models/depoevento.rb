class Depoevento < ActiveRecord::Base
	validates_uniqueness_of :nombre, :message => "--El nombre del evento ya ha sido Ingresado"
	validates_presence_of :nombre, :message => "--Ingrese un nombre de evento por favor"
	validates_presence_of :premio, :message => "--Ingrese el premio por favor"
	validates_presence_of :maxequipos, :message => "--Ingrese el numero maximo de equipos por favor"
	validates_presence_of :del, :message => "--Ingrese la fecha de inicio por favor"
	validates_presence_of :al, :message => "--Ingrese la fecha de fin por favor"
end
