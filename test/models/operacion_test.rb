require 'test_helper'

class OperacionTest < ActiveSupport::TestCase
	def setup
		@trabajador = trabajadors(:one)
		@limpiar = Operacion.create(trabajador_id: @trabajador.id)
		
	end
  test "revisar el trabajador responsable" do
    assert @limpiar.trabajador_id == @trabajador.id
  end
end
