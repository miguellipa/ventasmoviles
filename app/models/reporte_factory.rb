class ReporteFactory
  #use getShape method to get object of type shape
  def get_reporte(type)
    case type
    when 'PRECENCIA'    then Precencium.new
    when 'CLIENTE'    then Cliente.new
    when 'PERSONA' then Persona.new
    when 'PRODUCTO'    then Producto.new
    when 'CATEGORIA'    then Category.new  
     when 'PEDIDO'    then Pedido.new  
    when 'DESCUENTOCLIENTE' then  DescuentoCliente.new
    else nil
    end
  end
end