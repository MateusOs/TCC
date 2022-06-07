class MainController < ApplicationController
	before_action :set_eventos
	def index
		#flash.now[:notice] = "Login realizado com sucesso"
		#flash.now[:alert] = "Email ou senha incorretos"
	end

	private

	def set_eventos
  		@eventos = Evento.where("data > ?", Time.now)
  	end
end