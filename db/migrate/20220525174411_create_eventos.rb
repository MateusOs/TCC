class CreateEventos < ActiveRecord::Migration[7.0]
  def change
    create_table :eventos do |t|
      t.string :descricao
      t.date :data
      t.references :projeto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
