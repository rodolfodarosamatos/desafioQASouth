#language:  pt
@simulador_poupanca
Funcionalidade: Simular investimento poupança
    Com o proposito de Simular um Investimento na poupança
    Eu como um associado
    Gostaria de prencher um formulário de simulação
    Ver a tabela de resultado do mês e valor

    @simulacao_para_voce_ok
    Cenário: Simulação
        Quando eu seleciono o 'paraVoce'
        E Informo o valor da applicacao: '20.00', o valor mensal: '20.00' e tempo mes: '1'
        E Clico em Simular
        #Então devo ver a tabela de resultado com o valor 'R$ 40'
        E devo imprimir a tabela de <id> , <mes_valor>

        Exemplos:
        |id|mes_valor|
        |0|"Tempo (Meses) Valor"|
        |1|"13 R$ 282"|
        |2|"25 R$ 529"|
        |3|"37 R$ 779"|
        |4|"49 R$ 1.033"|

    @simulacao_para_empresa_ok
    Cenário: Simulação para Empresa
        Quando eu seleciono o 'paraEmpresa'
        E Informo o valor da applicacao: '20.00', o valor mensal: '20.00' e tempo mes: '1'
        E Clico em Simular
        #Então devo ver a tabela de resultado com o valor 'R$ 40'
        E devo imprimir a tabela de <id> , <mes_valor>

        Exemplos:
        |id|mes_valor|
        |0|"Tempo (Meses) Valor"|
        |1|"13 R$ 282"|
        |2|"25 R$ 529"|
        |3|"37 R$ 779"|
        |4|"49 R$ 1.033"|

    @simulacao_wrong
    Cenário: Simulação para Empresa
        Quando eu seleciono o 'paraEmpresa'
        E Informo o valor da applicacao: '20.00', o valor mensal: '20.00' e tempo mes: '1'
        E Clico em Simular
        #Então devo ver a tabela de resultado com o valor 'R$ 40'
        E devo imprimir a tabela de <id> , <mes_valor>

        Exemplos:
        |id|mes_valor|
        |0|"Tempo (Meses) Valor"|
        |1|"13 R$ 282"|
        |2|"25 R$ 529"|
        |3|"37 R$ 529"|
        |4|"49 R$ 1.039"|

    @aplicacao_menor
    Cenário: Aplicacao menor que 20
        Quando eu seleciono o 'perfil'
        E Informo o valor da applicacao: '19.99', o valor mensal: '20.00' e tempo mes: '1' e Clico em Simular
        Então devo ver a mensagem do campo aplicacao: 'Valor mínimo de 20.00'

    @poupanca_menor
    Cenário:  Poupanca menor que 20
        Quando eu seleciono o 'perfil'
        E Informo o valor da applicacao: '20.00', o valor mensal: '19.00' e tempo mes: '1' e Clico em Simular
        Então devo ver a mensagem do campo de investimento: 'Valor mínimo de 20.00'
    
    @mes_menor
    Cenário:  Mês menor que 1
        Quando eu seleciono o 'perfil'
        E Informo o valor da applicacao: '20.00', o valor mensal: '20.00' e tempo mes: '0' e Clico em Simular
        Então devo ver a mensagem do campo de mes ou ano : 'Valor esperado não confere'

    @limpar_formulario_para_voce
    Cenário: Simulação
        Quando eu seleciono o 'paraVoce'
        E Informo o valor da applicacao: '20.00', o valor mensal: '20.00' e tempo mes: '1'
        E Clico em Limpar
    
    @limpar_formulario_para_sua_empresa
    Cenário: Simulação
        Quando eu seleciono o 'paraEmpresa'
        E Informo o valor da applicacao: '20.00', o valor mensal: '20.00' e tempo mes: '1'
        E Clico em Limpar


