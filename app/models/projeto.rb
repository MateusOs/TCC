require 'bcrypt'
class Projeto < ActiveRecord::Base
	include BCrypt
	belongs_to :usuario
	has_many :projetos
	validates :nome, presence: true
	validates :numero, presence: true
	validates :data, presence: true
	validates :dataInicio, presence: true
	validates :dataFim, presence: false
	validates :usuario_id, presence: true
	validates :status, presence: false
	validates :area, presence: false
	validates :departamento, presence: false
	validates :avaliacaoComite, presence: false
	validates :avaliacaoDepex, presence: false
	validates :avaliacaoGeral, presence: false
	validates :areaTematica, presence: false
	validates :objetivo, presence: false
end
