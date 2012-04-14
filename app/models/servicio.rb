class Servicio < ActiveRecord::Base
	has_many :alquile_servicios
	has_many :alquilers, :through => :alquile_servicios
end
