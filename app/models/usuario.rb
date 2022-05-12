require 'bcrypt'
class Usuario < ActiveRecord::Base
	include BCrypt
	has_secure_password
	validates :nome, presence: true
	validates :login, presence: true
	validates :password, presence: true
	validates :email, presence: true
	validates :tipoUsuario, presence: true
	validates :fone, presence: false
end
