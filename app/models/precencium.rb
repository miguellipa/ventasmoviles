class Precencium < ActiveRecord::Base
    belongs_to :cliente
    belongs_to :persona
    belongs_to :producto
    belongs_to :usuario
    

    def obtener(user)

         Precencium.joins(:cliente, :persona,[{ producto: :category  }]).where("usuario_id = ?", user.id)
    end
    
end
