require_relative 'reporte_factory'
class Resumen 
    
    
    def reportefactory
        ReporteFactory.new
    end

    def total_precencia_usuario(user)
        precencia = reportefactory.get_reporte('PRECENCIA')
        precencia.obtener(user)
    end    
    
    def obtener_producto_categoria(id)
        categoria = reportefactory.get_reporte('CATEGORIA')
        categoria.obtener(id)        
    end

    
    def obtener_precencia_pedido(id)
        pedido = reportefactory.get_reporte('PEDIDO')
        pedido.obtener(id)        
    end
    
    def total_precencia_usuario_count(user)
        precencia = reportefactory.get_reporte('PRECENCIA')
        precencia.obtener(user).count
    end    
 
    def obtener_descuento_cliente(id)
        descuentocliente = reportefactory.get_reporte('DESCUENTOCLIENTE')
        descuentocliente.obtener(id)        
    end    
 
    def total_pedido(param1,param2)
        (param1 * param2) 
    end

    
end