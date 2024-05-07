running = true

def print_main_menu
    puts 'Digite uma operação a ser realizada: '
    print "1 - Somar\n2 - Subtrair\n3 - Dividr\n4 - multiplicar\n5 - elevado a potência\n0 - Sair\n"
    print 'Digite a opção: '
end

def read_numbers(name_operation)
  numbers = Array.new(2)
  puts "Digite os dois operandos para calcular a #{name_operation}"
  numbers[0] = gets.chomp.to_i
  numbers[1] = gets.chomp.to_i

  return numbers
end 

def sum
  numbers = read_numbers('soma')
  
  return numbers[0] + numbers[1]
end

def subtract
  numbers = read_numbers('subtração')
  
  if (numbers[0] < numbers[1])
    return numbers[1] - numbers[0]
  end

  return numbers[0] - number[1]
end

def divide
  numbers = read_numbers('divisão')
  
  if (numbers[1] <= 0)
    puts 'Não existe divisão por zero'
  end

  return numbers[0] / numbers[1]
end

def multiply
  numbers = read_numbers('multiplicação')
  
  return numbers[0] * numbers[1]
end

def power
  numbers = read_numbers('potência')

  return numbers[0] ** numbers[1]
end

def select_option(option)
  result = nil
  if option == 1
    result = sum
  elsif option == 2
    result = subtract
  elsif option == 3
    result = divide
  elsif option == 4
    result = multiply
  elsif option == 5
    result = power
  else 
    puts 'Operação selecionada inválida'
  end

  return result
end



while running
  print_main_menu
  option = gets.chomp.to_i
  
  result =  select_option(option)
  
  if result != nil
    puts "O resultado da operação foi #{result}"
  end 

  if option == 0
      running = false
  end
end
