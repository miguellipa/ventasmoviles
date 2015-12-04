class Resumen 
    
    def total_precencia_usuario(user)
        Precencium.precencia_usuario(user)
    end    

    def obtener_precencia_cliente(cliente)
        Cliente.obtener_cliente(cliente)
    end    
 
    def obtener_precencia_producto(cliente)
        Producto.obtener_producto(cliente)
    end   
    
    def obtener_precencia_persona(cliente)
        Persona.obtener_persona(cliente)
    end       
 
    def obtener_producto_categoria(cliente)
        Category.obtener_catergoria(cliente)
    end 

    def obtener_precencia_pedido(cliente)
        Pedido.obtener_pedido(cliente)
    end  
 
end