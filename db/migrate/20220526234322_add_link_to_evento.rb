class AddLinkToEvento < ActiveRecord::Migration[7.0]
  def change
    add_column :eventos, :link, :string
  end
end
