class AddDepartamentoToUsuario < ActiveRecord::Migration[7.0]
  def change
    add_column :usuarios, :departamento, :string
    add_column :usuarios, :chefeDepartamento, :string
  end
end
