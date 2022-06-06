class EventosController < ApplicationController
	before_action :authorize, except: [:show]
	before_action :set_projetos, only: [:edit, :update, :new, :create]
	
	def index
		@evento = Evento.all
	end

	def show
		@evento = Evento.find(params[:id])
	end
	
	def new
		@evento = Evento.new
	end

	def create
		@evento = Evento.new(evento_params)
		if @evento.save
			redirect_to eventos_path
			flash[:notice] = "Evento foi criado com sucesso"
		else
			render :new
		end
	end 

	def edit
		@evento = Evento.find(params[:id])
		render :edit
	end

	def update
		@evento = Evento.find(params[:id])
		if @evento.update(evento_params)
			flash[:notice] = "Evento atualizado"
			redirect_to eventos_path
		else
			flash.now[:error] = "Erro ao salvar!"
			render :edit
		end

	end

	def destroy
		@evento = Evento.find(params[:id])
		@evento.destroy
		flash[:notice] = "Evento deletado"
		redirect_to eventos_path
	end


	private
	
	def evento_params
		params.require(:evento).permit(:descricao, :data, :projeto_id, :link)
	end	

	def find_user
    	@user = Evento.find(params[:id])
  	end

  	def set_projetos
  		@projetos = Projeto.all
  	end
end