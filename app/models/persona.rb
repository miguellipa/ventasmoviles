class Persona < ActiveRecord::Base
    belongs_to :cliente
    
    def self.obtener_persona(persona)

        Persona.where("id = ?", persona)
    end     
    
end
