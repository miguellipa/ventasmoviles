class Category < ActiveRecord::Base


    def obtener(id)

        Category.where("id = ?", id)
    end    
    
end
