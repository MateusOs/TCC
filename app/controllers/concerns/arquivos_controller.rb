class ArquivosController < ApplicationController
	before_action :authorize, except: [:show]
	before_action :set_projetos, only: [:edit, :update, :new, :create]
	
	def index
		@arquivo = Arquivo.all.order("data")
	end

	def show
		@arquivo = Arquivo.find(params[:id])
	end
	
	def new
		@arquivo = Arquivo.new
	end

	def create
		@arquivo = Arquivo.new(arquivo_params)
		if @arquivo.save
			redirect_to arquivos_path
			flash[:notice] = "Arquivo foi adicionado com sucesso"
		else
			render :new
		end
	end 

	def edit
		@arquivo = Arquivo.find(params[:id])
		@arquivo.data = @arquivo.data.strftime("%d/%m/%Y")
		render :edit
	end

	def update
		@arquivo = Arquivo.find(params[:id])
		if @arquivo.update(arquivo_params)
			flash[:notice] = "Arquivo atualizado"
			redirect_to arquivos_path
		else
			flash.now[:error] = "Erro ao salvar!"
			render :edit
		end

	end

	def destroy
		@arquivo = Arquivo.find(params[:id])
		@arquivo.destroy
		flash[:notice] = "Arquivo deletado"
		redirect_to arquivos_path
	end


	private
	
	def arquivo_params
		params.require(:arquivo).permit(:data, :projeto_id, :link, :documento, :figura)
	end	

  	def set_projetos
  		@projetos = Projeto.all
  	end
end