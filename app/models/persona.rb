class Persona < ActiveRecord::Base
	has_many :canchas
	has_many :alquilers
end
