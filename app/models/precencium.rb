class Precencium < ActiveRecord::Base
    belongs_to :cliente
    belongs_to :persona
    belongs_to :producto
end
