class NomeCompletoController < ApplicationController

  before_action :set_nomeCompleto, only: %i[ show edit update destroy ]

  def index
    @nomeCompleto = NomeCompleto.all
  end

  # GET /nome_completo/1 or /enderecos/1.json
  def show
  end

  # GET /nome_completo/new
  def new
    @nomeCompleto = NomeCompleto.new
  end

  # GET /nome_completo/1/edit
  def edit
  end

  def create
    @nomeCompleto = NomeCompleto.new(nomeCompleto_params)

    respond_to do |format|
      if @nomeCompleto.save
        format.html { redirect_to endereco_url(@nomeCompleto), notice: "Nome Completo was successfully created." }
        format.json { render :show, status: :created, location: @nomeCompleto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nomeCompleto.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_nomeCompleto
    @nomeCompleto = NomeCompleto.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def nomeCompleto_params
    params.require(:nomeCompleto).permit(:nome, :sobrenome)
  end
end
