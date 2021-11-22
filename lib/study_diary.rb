
def menu
    puts  '[1] Cadastrar um item para estudar'
    puts  '[2] Ver todos os itens cadastrados'
    puts  '[3] Buscar um item de estudo'
    puts  '[4] Sair'
    puts  "Escolha uma opção: " 
    
  end

  opcao =0
  sair = true
  puts "Bem-vindo ao Diário de Estudos, seu companheiro para estudar!"
  while sair == true
      menu
      opcao = gets.to_i()
      case opcao
      when 1
          puts 'Digite o título do seu item de estudo:'
          titulo = gets.chomp() 
          puts "Categoria\n#1 - Ruby\n#2 - Rails\n#3 - HTML"
          categoria = gets.to_i()
          categoria = 'Ruby'  if categoria == 1 
          categoria = 'Rails' if categoria == 2
          categoria = 'HTML' if categoria == 3
          
          File.open("arquivo.txt", 'w+') { |file| file.write("Item de Estudo: #{titulo} - #{categoria}") }
      when 2
        File.open("arquivo.txt", 'r') { |file| puts file.reader() }
          
      when 3
          
          puts 'Opção 3'
      when 4
          sair = false
          puts "Obrigado por usar o Diário de estudos!!!"
      else
          puts 'Opção inválida!'
      end

  end