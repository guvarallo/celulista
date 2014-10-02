class AnunciosController < ApplicationController
  before_action :set_anuncio, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @anuncios = Anuncio.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 50)
  end

  def show
  end

  def new
    @anuncio = current_user.anuncios.build
  end

  def edit
  end

  def create
    @anuncio = Anuncio.new(anuncio_params)
    if @anuncio.save
      redirect_to @anuncio, notice: 'Anuncio criado com sucesso!'
    else
      render action: 'new'
    end
  end

  def update
    if @anuncio.update(anuncio_params)
      redirect_to @anuncio, notice: 'Anuncio atualizado com sucesso!'
    else
      render action: 'edit'
    end
  end

  def destroy
    @anuncio.destroy
    redirect_to anuncios_url
  end

  private

    def set_anuncio
      @anuncio = Anuncio.find(params[:id])
    end
    
    def correct_user
      @anuncio = current_user.anuncio.find_by(id: params[:id])
      redirect_to anuncios_path, notice: "Não autorizado a atualizar esse anúncio!" if @anuncio.nil?
    end

    def anuncio_params
      params.require(:anuncio).permit(:description)
    end
end
