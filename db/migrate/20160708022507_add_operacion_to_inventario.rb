class AddOperacionToInventario < ActiveRecord::Migration
  def change
    add_reference :inventarios, :operacion, index: true, foreign_key: true
    #nombre de tabla donde pondremos FK, nombre del modelo con has_one/many 
  end
end
