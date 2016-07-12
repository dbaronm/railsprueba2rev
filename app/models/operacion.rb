class Operacion < ActiveRecord::Base
	has_one :inventario, dependent: :destroy
  belongs_to :trabajador
  	scope :operacion_5, -> {order("id desc").limit(5)}

  	scope :de_hoy, -> {where(:created_at => (last.created_at.beginning_of_day..last.created_at.end_of_day))}
end
