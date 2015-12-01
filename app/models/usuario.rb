class Usuario < ActiveRecord::Base
    belongs_to :tipo
    
    def tipo_usuario
      self.tipo.tipo
    end

end
