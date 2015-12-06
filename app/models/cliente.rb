class Cliente < ActiveRecord::Base

    def self.obtener_cliente(id_cliente)

        Cliente.where("id = ?", id_cliente)
    end
    
    def self.obtener(id_cliente)

        Cliente.where("id = ?",id_cliente)
    end    
end
