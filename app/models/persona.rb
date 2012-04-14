class Persona < ActiveRecord::Base
	has_many :canchas
	has_many :alquilers
	validates_presence_of :nombre, :message => "--Ingrese un nombre por favor"
	validates_presence_of :apepat, :message => "--Ingrese el apellido paterno por favor"
	validates_presence_of :apemat, :message => "--Ingrese el materno paterno por favor"
	validates_uniqueness_of :numdoc, :message => "--El Nro. de DNI ya ha sido Ingresado"
	validates_presence_of :correo, :message => "--Ingrese el correo electronico por favor"
	validates_uniqueness_of :correo, :message => "--El correo electronico ya ha sido Ingresado"
	validates_presence_of :password, :message => "--Ingrese el password por favor"
	validates_presence_of :telefono, :message => "--Ingrese el Nro. de telefono por favor"
	#validates :nombre, :presence => true, :uniqueness => true, :message => "ya se esta usando"
	#def validate
	#	unless nombre && nombre =~ /\w+/
	#	errors.add(:nombre,
	#	"Debe especificar un nombre")
	#	end
	#end	
end
