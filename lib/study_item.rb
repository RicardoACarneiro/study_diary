require_relative 'category'
require_relative 'study_diary'
class StudyItem
    attr_accessor :item , :categoria
    def ininialize (item:, categoria: Category.new)
        @item = item
        @categoria= categoria
    end
    def item
       @item       
    end
end