require_relative 'study_diary'
require_relative 'study_item'
class Category
    attr_accessor :categoria
    
    def ininialize(categoria:'Geral')
        @categotia = categoria
    end
    def categoria
       @categoria

    end
end