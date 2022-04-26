class RegistrationsController < ApplicationController
	def new
		@usuario = Usuario.new
	end

	def create
		@usuario = Usuario.new
		if @usuario.save
			redirect_to root_path
		else
			render :new
		end
	end 

	private

	def usuario_params

	end	
end