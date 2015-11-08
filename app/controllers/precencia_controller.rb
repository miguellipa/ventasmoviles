class PrecenciaController < ApplicationController
  before_action :set_precencium, only: [:show, :edit, :update, :destroy]

  # GET /precencia
  # GET /precencia.json
  def index
    @precencia = Precencium.all
  end

  # GET /precencia/1
  # GET /precencia/1.json
  def show
  end

  # GET /precencia/new
  def new
    @precencium = Precencium.new
  end

  # GET /precencia/1/edit
  def edit
  end

  # POST /precencia
  # POST /precencia.json
  def create
    @precencium = Precencium.new(precencium_params)

    respond_to do |format|
      if @precencium.save
        format.html { redirect_to @precencium, notice: 'Precencium was successfully created.' }
        format.json { render :show, status: :created, location: @precencium }
      else
        format.html { render :new }
        format.json { render json: @precencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /precencia/1
  # PATCH/PUT /precencia/1.json
  def update
    respond_to do |format|
      if @precencium.update(precencium_params)
        format.html { redirect_to @precencium, notice: 'Precencium was successfully updated.' }
        format.json { render :show, status: :ok, location: @precencium }
      else
        format.html { render :edit }
        format.json { render json: @precencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /precencia/1
  # DELETE /precencia/1.json
  def destroy
    @precencium.destroy
    respond_to do |format|
      format.html { redirect_to precencia_url, notice: 'Precencium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_precencium
      @precencium = Precencium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def precencium_params
      params.require(:precencium).permit(:hora, :observacion)
    end
end
