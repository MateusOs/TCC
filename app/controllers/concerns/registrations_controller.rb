class RegistrationsController < ApplicationController
	
	def new
		@usuario = Usuario.new
	end

	def create
		@usuario = Usuario.new(usuario_params)
		if @usuario.save
			redirect_to root_path
		else
			render :new
		end
	end 


	def index
		@usuario = Usuario.all
	end

	private
	def usuario_params
		params.require(:usuario).permit(:nome, :login, :senha, :email, :tipoUsuario, :fone)
	end	
end