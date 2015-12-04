class ResumenController < ApplicationController
  def index
    # INICIO FACADE
    @resumen_usuario = Resumen.new
    
  end
end
