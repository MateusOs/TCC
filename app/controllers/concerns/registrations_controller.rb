class RegistrationsController < ApplicationController
	#before_filter :find_user, only: [:show, :edit, :update, :destroy]

	def index
		@usuario = Usuario.all
	end

	def show
		@usuario = Usuario.find(params[:id])
	end
	
	def new
		@usuario = Usuario.new
	end

	def create
		@usuario = Usuario.new(usuario_params)
		if @usuario.save
			redirect_to registrations_path
			flash[:notice] = "Usuario adicionado"
		else
			render :new
		end
	end 

	def edit
		@usuario = Usuario.find(params[:id])
		render :edit
	end

	def update
		@usuario = Usuario.find(params[:id])
		if @usuario.update(usuario_params)
			flash[:notice] = "Usuario atualizado"
			redirect_to registrations_path
		else
			flash.now[:error] = "Erro ao salvar!"
			render :edit
		end

	end

	def destroy
		@usuario = Usuario.find(params[:id])
		@usuario.destroy		
		flash[:notice] = "Usuario deletado"
		redirect_to registrations_path
	end


	private
	
	def usuario_params
		params.require(:usuario).permit(:nome, :login, :senha, :email, :tipoUsuario, :fone)
	end	

	def find_user
    	@user = Usuario.find(params[:id])
  	end
end