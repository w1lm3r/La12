class Cancha < ActiveRecord::Base
	belongs_to :local
	belongs_to :persona
	has_many :alquilers
	
end
