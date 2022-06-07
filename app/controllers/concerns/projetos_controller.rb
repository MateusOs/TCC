class ProjetosController < ApplicationController
	before_action :authorize, except: [:index, :show]
	before_action :set_usuarios, only: [:edit, :update, :new, :create]
	before_action :set_usuarioprojetos, only: [:show]
	
	def index
		if params[:nomeProjeto]
			@projeto = Projeto.where("lower(nome) like lower(?)", "%#{params[:nomeProjeto]}%")
		else
			@projeto = Projeto.all
		end
	end

	def show
		@projeto = Projeto.find(params[:id])
	end
	
	def new
		@projeto = Projeto.new
	end

	def create
		@projeto = Projeto.new(projeto_params)
		if @projeto.save
			redirect_to projetos_path
			flash[:notice] = "Projeto foi criado com sucesso"
		else
			render :new
		end
	end 

	def edit
		@projeto = Projeto.find(params[:id])
		render :edit
	end

	def update
		@projeto = Projeto.find(params[:id])
		if @projeto.update(projeto_params)
			flash[:notice] = "Projeto atualizado"
			redirect_to projetos_path
		else
			flash.now[:error] = "Erro ao salvar!"
			render :edit
		end

	end

	def destroy
		@projeto = Projeto.find(params[:id])
		@projeto.destroy
		flash[:notice] = "Projeto deletado"
		redirect_to projetos_path
	end


	private
	
	def projeto_params
		params.require(:projeto).permit(:nome, :numero, :data, :dataInicio, :dataFim, :status, :area, :departamento, :avaliacaComite, :avaliacaoDexep, :avaliacaoGeral, :usuario_id, :objetivo, :areaTematica)
	end	

	def find_user
    	@user = Projeto.find(params[:id])
  	end

  	def set_usuarios
  		@usuarios = Usuario.where(tipoUsuario: "Professor")
  	end

  	def set_usuarioprojetos
  		@usuarioprojeto = UsuarioProjeto.all
  	end
end