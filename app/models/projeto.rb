require 'bcrypt'
class Projeto < ActiveRecord::Base
	include BCrypt
	validates :nome, presence: true
	validates :numero, presence: true
	validates :data, presence: true
	validates :dataInicio, presence: true
	validates :dataFim, presence: true
	validates :status, presence: false
	validates :area, presence: false
	validates :departamento, presence: false
	validates :avaliacaoComite, presence: false
	validates :avaliacaoDepex, presence: false
	validates :avaliacaoGeral, presence: false
end
