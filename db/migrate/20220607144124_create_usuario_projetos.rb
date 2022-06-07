class CreateUsuarioProjetos < ActiveRecord::Migration[7.0]
  def change
    create_table :usuario_projetos do |t|
      t.references :usuario, null: false, foreign_key: true
      t.references :projeto, null: false, foreign_key: true
      t.string :tipoUsuario
      t.string :cargaHoraria

      t.timestamps
    end
  end
end
