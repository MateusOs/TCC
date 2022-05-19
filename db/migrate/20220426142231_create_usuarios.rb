class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.string :nome, null: false
      t.string :login, null: false, index: {unique: true}
      t.string :password_digest, null: false
      t.string :email, null: false, index: {unique: true}
      t.string :tipoUsuario, null: false
      t.string :fone, null: true

      t.timestamps
    end
  end
end
