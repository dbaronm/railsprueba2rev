require 'test_helper'

class TrabajadorTest < ActiveSupport::TestCase
	def setup
		@trabajador = trabajadors(:one)
	end
  test "validar presence nombre" do
  	@trabajador.nombre  = ""
    assert_not @trabajador.save 
  end
end
