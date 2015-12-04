class Cliente < ActiveRecord::Base

    def self.obtener_cliente(cliente)

        Cliente.where("id = ?", cliente)
    end
    
end
