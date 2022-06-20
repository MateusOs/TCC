class AddFieldsToArquivo < ActiveRecord::Migration[7.0]
  def change
    add_reference :arquivos, :projeto, null: false, foreign_key: true
  end
end
