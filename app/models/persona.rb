class Persona < ActiveRecord::Base
    belongs_to :cliente
    
    def self.obtener_persona(persona)

        Persona.where("id = ?", persona)
    end     
 
    def self.obtener(persona_id)

        Persona.where("id = ?", persona_id)
    end  
    
end
