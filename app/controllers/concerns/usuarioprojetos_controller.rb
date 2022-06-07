class UsuarioprojetosController < ApplicationController
	before_action :authorize
	before_action :set_usuarios, only: [:edit, :update, :new, :create]
	before_action :set_projetos, only: [:edit, :update, :new, :create]
	
	
	def index
		@usuarioprojeto = UsuarioProjeto.all
	end

	def show
		@usuarioprojeto = UsuarioProjeto.find(params[:id])
	end
	
	def new
		@usuarioprojeto = UsuarioProjeto.new
	end

	def create
		@usuarioprojeto = UsuarioProjeto.new(usuarioprojeto_params)
		if @usuarioprojeto.save
			redirect_to projetos_path
			flash[:notice] = "Usuario adicionado ao projeto"
		else
			render :new
		end
	end 

	def edit
		@usuarioprojeto = UsuarioProjeto.find(params[:id])
		render :edit
	end

	def update
		@usuarioprojeto = UsuarioProjeto.find(params[:id])
		if @usuarioprojeto.update(projeto_params)
			flash[:notice] = "Projeto atualizado"
			redirect_to usuarioprojetos_path
		else
			flash.now[:error] = "Erro ao salvar!"
			render :edit
		end

	end

	def destroy
		@usuarioprojeto = UsuarioProjeto.find(params[:id])
		@usuarioprojeto.destroy
		flash[:notice] = "Projeto deletado"
		redirect_to projetos_path
	end


	private
	
	def usuarioprojeto_params
		params.require(:usuario_projeto).permit(:usuario_id, :projeto_id, :cargaHoraria, :tipoUsuario)
	end	

	def set_usuarios
  		@usuarios = Usuario.all
  	end

  	def set_projetos
  		@projetos = Projeto.all
  	end

end