require_relative 'category'
require_relative 'study_item'
class StudyDiary
    attr_accessor :item , :categoria
def menu
    puts  '[1] Cadastrar um item para estudar'
    puts  '[2] Ver todos os itens cadastrados'
    puts  '[3] Buscar um item de estudo'
    puts  '[4] Sair'
    puts  "Escolha uma opção: " 
    
end

class StudyItem
    attr_accessor :item , :categoria
    def ininialize (item, categoria)
        @item = item
        @categoria= Category.new(categoria)
    end
    def menu
        puts  '[1] Cadastrar um item para estudar'
        puts  '[2] Ver todos os itens cadastrados'
        puts  '[3] Buscar um item de estudo'
        puts  '[4] Sair'
        print  "Escolha uma opção: " 
        
    end
end
menu = StudyItem.new()
items = []
opcao =0
sair = true
puts "Bem-vindo ao Diário de Estudos, seu companheiro para estudar!"
while sair == true
    menu.menu
    opcao = gets.to_i
    case opcao
    when 1
        puts 'Digite o título do seu item de estudo:'
        @item = gets.chomp
        puts "Categoria\n#1 - Ruby\n#2 - Rails\n#3 - HTML"
        @categoria = gets.to_i
            
        @categoria = 'Ruby'  if @categoria == 1 
        @categoria = 'Rails' if @categoria == 2
        @categoria = 'HTML' if @categoria == 3
        
        items << {item: @item, categoria: @categoria}
    when 2
        items.each.with_index do |item, index|
            puts "##{index} -- #{item[:item]} - #{item[:categoria]}"
        end
    when 3
        print 'Digite um termo a ser pesquisado: '
        pesquisa = gets.chomp
        items.each.with_index do |item, index|
            if item[:item].include? (pesquisa)
                puts "##{index} -- #{item[:item]} - #{item[:categoria]}"  
            elsif
                puts 'Nenhum termo encontrado'
            end
        end
    when 4
        sair = false
        puts "Obrigado por usar o Diário de estudos!!!"
    else
        puts 'Opção inválida!'
    end

end
end