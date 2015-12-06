class Producto < ActiveRecord::Base
    belongs_to :category

    def self.obtener_producto(producto)

        Producto.where("id = ?", producto)
    end 
 
    def self.obtener(id_producto)

        Producto.where("id = ?", id_producto)
    end 
end
