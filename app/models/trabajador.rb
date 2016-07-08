class Trabajador < ActiveRecord::Base
	has_many :operaciones
	validates :nombre, presence: true
end
