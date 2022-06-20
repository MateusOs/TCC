class CreateArquivos < ActiveRecord::Migration[7.0]
  def change
    create_table :arquivos do |t|
      t.date :data
      t.string :link

      t.timestamps
    end
  end
end
