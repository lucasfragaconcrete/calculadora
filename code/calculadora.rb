require_relative 'constantes'

class Calculadora

  public
  def realizar_operacao(opcoes, primeiro_numero, segundo_numero)
    begin
      resultado = primeiro_numero.send(Constantes::OPCOES[opcoes].to_sym, segundo_numero)
    rescue Exception => ex
      return Constantes::MENSAGEM_DIVISAO_POR_ZERO if ex.message == Constantes::ERRO_DIVISAO_POR_ZERO
    end
    "O seu resultado é: #{resultado}"
  end
  
    def exibir_menu
      Constantes::OPCOES.each { |opcoes, operador| puts "Digite #{opcoes} para #{operador}" }
      nil
    end
  
    def validar_opcao(opcao_input)
      Constantes::OPCOES.each do |opcoes, _operador|
        return opcao_input if opcao_input == opcoes
      end
      puts Constantes::MENSAGEM_OPCAO_INVALIDA
      opcoes = pegar_numero
      validar_opcao(opcoes)
    end
  
    def opcao_sair?(opcoes)
      opcoes == Constantes::SAIR
    end
  
    def pegar_numero
      user_input = nil
      begin
        user_input = Integer(gets.chomp)
      rescue Exception => ex
        puts Constantes::MENSAGEM_FORMATO_INVALIDO
      end
      user_input.nil? ? pegar_numero : user_input
    end
  
    def exibir_continue
      puts Constantes::MENSAGEM_CONTINUAR
      opcoes = pegar_numero
      system('clear')
      opcoes
    end
  end