class Producto < ActiveRecord::Base
    belongs_to :category

    def self.obtener_producto(producto)

        Producto.where("id = ?", producto)
    end 
 
end
