require_relative '../code/calculadora.rb'

describe Calculadora do
  before do
    @calculadora = Calculadora.new
  end

  it 'Realizar a soma entre dois números' do
    resultado = @calculadora.realizar_operacao(1, 7, 7)
    expect(resultado).to eq('O seu resultado é: 14')
  end

  it 'Realizar uma subtração entre dois números' do
    resultado = @calculadora.realizar_operacao(2, 7, 7)
    expect(resultado).to eq('O seu resultado é: 0')
  end

  it 'Realizar uma multiplicação entre dois números' do
    resultado = @calculadora.realizar_operacao(3, 7, 7)
    expect(resultado).to eq('O seu resultado é: 49')
  end

  it 'Realizar uma divisão entre dois números' do
    resultado = @calculadora.realizar_operacao(4, 7, 7)
    expect(resultado).to eq('O seu resultado é: 1')
  end

  it 'Não deve realizar uma divisão por zero' do
    resultado = @calculadora.realizar_operacao(4, 7, 0)
    expect(resultado).to eq('Não é possivel dividir por zero.')
  end

  it 'Realizar uma multiplicação entre dois números negativos' do
    resultado = @calculadora.realizar_operacao(3, -7, -7)
    expect(resultado).to eq('O seu resultado é: 49')
  end

  it 'Realizar uma divisão entre dois números negativos' do
    resultado = @calculadora.realizar_operacao(4, -7, -7)
    expect(resultado).to eq('O seu resultado é: 1')
  end

  it 'Realizar subtração entre dois números negativos' do
    resultado = @calculadora.realizar_operacao(2, -7, -7)
    expect(resultado).to eq('O seu resultado é: 0')
  end

  it 'Realizar uma soma entre dois números negativos' do
    resultado = @calculadora.realizar_operacao(1, -7, -7)
    expect(resultado).to eq('O seu resultado é: -14')
  end
end