class Inventario < ActiveRecord::Base
	belongs_to :operacion
	scope :operacion_first_trabajador, -> {Trabajador.first.operacions.map do |operacion|
		operacion.inventario
	end
	}
	scope :disponibles, -> {where(operacion_id: nil)}
	after_destroy :borrar
	def borrar
		Registro.create(descripcion: "La pieza con numero de serie #{serie} ha sido borrada")
	end
end
