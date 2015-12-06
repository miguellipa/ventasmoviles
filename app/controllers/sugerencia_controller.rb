class SugerenciaController < ApplicationController

  def index
    @rutas = Cliente.all
    @clientes = Cliente.where("id = ?", Cliente.first.id)
  end
   
  def show
    @cliente = Cliente.find_by("id = ?", params[:id])
  end

  def sugerencia_ruta
    
    #@clientes = Cliente.find_by_sql("SELECT * FROM clientes where distrito = (select distrito from usuarios where id = '#{params[:id]}')")
    @clientes = Cliente.find_by_sql("SELECT *,'Sugerencia por precencia anterior' as sug1 FROM clientes where id = (select cliente_id from precencia where usuario_id = '#{params[:id]}')
                                     UNION
                                     SELECT *,'Sugerencia por distrito' as sug1 FROM clientes where distrito = (select distrito from usuarios where id = '#{params[:id]}')")
    #@clientes = Cliente.where("id = ?", params[:id])
    render json: @clientes.to_json
  end


end


