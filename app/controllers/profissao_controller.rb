class ProfissaoController < ApplicationController
  before_action :set_profissao, only: %i[ show edit update destroy ]

  def index
    @profissao = Profissao.all
  end

  # GET /profissao/1 or /profissao/1.json
  def show
  end

  # GET /profissao/new
  def new
    @profissao = Profissao.new
  end

  # GET /profissao/1/edit
  def edit
  end

  def create
    @profissao = Profissao.new(nomeCompleto_params)

    respond_to do |format|
      if @profissao.save
        format.html { redirect_to endereco_url(@profissao), notice: "Profissão was successfully created." }
        format.json { render :show, status: :created, location: @profissao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profissao.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_profissao
    @profissao = Profissao.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def profissao_params
    params.require(:profissao).permit(:profissao)
  end
end
