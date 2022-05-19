class CreateProjetos < ActiveRecord::Migration[7.0]
  def change
    create_table :projetos do |t|
      t.string :nome
      t.string :numero
      t.date :data
      t.date :dataInicio
      t.date :dataFim
      t.string :status
      t.string :area
      t.string :departamento
      t.integer :avaliacaoComite
      t.integer :avaliacaoDepex
      t.integer :avaliacaoGeral

      t.timestamps
    end
  end
end
