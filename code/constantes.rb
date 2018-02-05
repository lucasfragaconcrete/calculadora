class Constantes
    
    ERRO_DIVISAO_POR_ZERO = 'divided by 0'.freeze
    MENSAGEM_DIVISAO_POR_ZERO = 'Não é possivel dividir por zero.'.freeze
    MENSAGEM_OPCAO_INVALIDA = 'Por favor insira uma opcão válida e tente novamente.'.freeze
    MENSAGEM_FORMATO_INVALIDO = 'Formato Inválido. Tente novamente.'.freeze
    MENSAGEM_CONTINUAR = 'Digite 0 para sair da calculadora ou qualquer outro número para continuar:'.freeze

    SOMA = 1
    SUBTRACAO = 2
    MULTIPLICACAO = 3
    DIVISAO = 4
    SAIR = 0

    OPCOES = {
    SOMA => '+',
    SUBTRACAO => '-',
    MULTIPLICACAO => '*',
    DIVISAO => '/',
    SAIR => 'sair da calculadora'
    }.freeze
    
end