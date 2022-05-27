class AddObjetivoToProjeto < ActiveRecord::Migration[7.0]
  def change
    add_column :projetos, :objetivo, :string
    add_column :projetos, :areaTematica, :string
  end
end
