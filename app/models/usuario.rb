require 'bcrypt'
class Usuario < ApplicationRecord
	include BCrypt
	#has_secure_password
	
    validates :nome, presence: true
    validates :login, presence: true
    validates :senha, presence: true
    validates :email, presence: true
    validates :tipoUsuario, presence: true
    validates :fone, presence: true
end
