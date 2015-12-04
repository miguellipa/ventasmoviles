class Precencium < ActiveRecord::Base
    belongs_to :cliente
    belongs_to :persona
    belongs_to :producto
    belongs_to :usuario
    
    def self.precencia_usuario(user)

        Precencium.where("usuario_id = ?", user.id)
    end
    
end
