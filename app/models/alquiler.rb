class Alquiler < ActiveRecord::Base
	belongs_to :cancha
	belongs_to :persona
end
