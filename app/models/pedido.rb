
class Pedido < ActiveRecord::Base
    belongs_to :precencium
    
     alias_attribute :precencium_id, :precencia_id
    #def to_label
    #"#{name} | #{subtype_name}"
    #end
    
    def self.to_csv(options = {})
        
        
    CSV.generate(options) do |csv|
        csv << column_names
        all.each do |pedidos|
          csv << pedidos.attributes.values_at(*column_names)
          end
    end
        
    end    
    

    def obtener(pedido_id)
        pedid = Precencium.where("id = ?", pedido_id)
        if !pedid.blank?
            "Si"
        end
    end    
    
end
