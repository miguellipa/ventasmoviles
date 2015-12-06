class DescuentoCliente < ActiveRecord::Base
    belongs_to :cliente
    
    def obtener(id)

         DescuentoCliente.where("cliente_id = ?", id)
    end
    
end
