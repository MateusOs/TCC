class AddFieldsToProjeto < ActiveRecord::Migration[7.0]
  def change
    add_reference :projetos, :usuario, null: false, foreign_key: true
  end
end
