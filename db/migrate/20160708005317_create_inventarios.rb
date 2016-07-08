class CreateInventarios < ActiveRecord::Migration
  def change
    create_table :inventarios do |t|
      t.integer :serie, index: true, unique: true, null: false 
      #index hace primary key, unique hace unico, null que no sea vacio
      t.integer :tamano
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
