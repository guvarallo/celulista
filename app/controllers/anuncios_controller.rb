class AnunciosController < ApplicationController
  before_action :set_anuncio, only: [:show, :edit, :update, :destroy]

  def index
    @anuncios = Anuncio.all
  end

  def show
  end

  def new
    @anuncio = Anuncio.new
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
      redirect_to @anuncio, notice: 'Anuncio atualizado com sucesso!' }
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

    def anuncio_params
      params.require(:anuncio).permit(:description)
    end
end
