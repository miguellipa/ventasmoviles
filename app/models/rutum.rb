class Rutum < ActiveRecord::Base
    belongs_to :cliente
    belongs_to :usuario
    
  validates :cliente, presence: true
  validates :usuario, presence: true
  
    def cliente_nombre
      self.cliente.nombre
    end
    
    def usuario_nombre
      self.usuario.nombre
    end
    
end
