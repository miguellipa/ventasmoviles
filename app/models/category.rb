class Category < ActiveRecord::Base

    def self.obtener_catergoria(categoria)

        Category.where("id = ?", categoria)
    end         
    
end
