class AddFieldsToEvento < ActiveRecord::Migration[7.0]
  def change
    add_column :eventos, :titulo, :string
  end
end
