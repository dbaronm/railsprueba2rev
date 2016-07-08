class CreateOperacions < ActiveRecord::Migration
  def change
    create_table :operacions do |t|
      t.references :trabajador, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
