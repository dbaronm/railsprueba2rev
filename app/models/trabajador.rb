class Trabajador < ActiveRecord::Base
	has_many :operacions, dependent: :destroy
	validates :nombre, presence: true
	scope :trabajador_first_trabajador, -> {first.operacions.map do |operacion|
		operacion.inventario
	end
	}
end
