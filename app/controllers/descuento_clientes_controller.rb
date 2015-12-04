class DescuentoClientesController < ApplicationController
  before_action :set_descuento_cliente, only: [:show, :edit, :update, :destroy]

  # GET /descuento_clientes
  # GET /descuento_clientes.json
  def index
    @descuento_clientes = DescuentoCliente.all
  end

  # GET /descuento_clientes/1
  # GET /descuento_clientes/1.json
  def show
  end

  # GET /descuento_clientes/new
  def new
    @descuento_cliente = DescuentoCliente.new
  end

  # GET /descuento_clientes/1/edit
  def edit
  end

  # POST /descuento_clientes
  # POST /descuento_clientes.json
  def create
    @descuento_cliente = DescuentoCliente.new(descuento_cliente_params)

    respond_to do |format|
      if @descuento_cliente.save
        format.html { redirect_to @descuento_cliente, notice: 'Descuento cliente was successfully created.' }
        format.json { render :show, status: :created, location: @descuento_cliente }
      else
        format.html { render :new }
        format.json { render json: @descuento_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /descuento_clientes/1
  # PATCH/PUT /descuento_clientes/1.json
  def update
    respond_to do |format|
      if @descuento_cliente.update(descuento_cliente_params)
        format.html { redirect_to @descuento_cliente, notice: 'Descuento cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @descuento_cliente }
      else
        format.html { render :edit }
        format.json { render json: @descuento_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descuento_clientes/1
  # DELETE /descuento_clientes/1.json
  def destroy
    @descuento_cliente.destroy
    respond_to do |format|
      format.html { redirect_to descuento_clientes_url, notice: 'Descuento cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_descuento_cliente
      @descuento_cliente = DescuentoCliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def descuento_cliente_params
      params.require(:descuento_cliente).permit(:descuento, :descripcion)
    end
end
