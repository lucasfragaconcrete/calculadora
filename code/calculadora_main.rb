require_relative 'calculadora'

class CalculadoraMain
  calculadora = Calculadora.new
  opcoes = nil

  puts "\n========== Seja bem-vindo a caculadora da Concrete ==========".freeze

  until opcoes == 0

    puts "\nSelecione a operacao que deseja realizar e aperte enter: "
    puts calculadora.exibir_menu

    opcoes = calculadora.pegar_numero
    opcoes = calculadora.validar_opcao(opcoes)

    break if calculadora.opcao_sair?(opcoes)

    puts 'Digite o primeiro número e aperte enter: '
    primeiro_numero = calculadora.pegar_numero

    puts 'Digite o segundo número e aperte enter: '
    segundo_numero = calculadora.pegar_numero

    puts calculadora.realizar_operacao(opcoes, primeiro_numero, segundo_numero)
    opcoes = calculadora.exibir_continue

  end

  system('clear')
  puts 'Obrigado, por utilizar a calculadora Concrete!'
end