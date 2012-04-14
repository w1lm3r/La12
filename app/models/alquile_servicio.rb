class AlquileServicio < ActiveRecord::Base
	belongs_to :alquiler
	belongs_to :servicio
end
