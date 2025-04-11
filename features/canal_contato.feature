Feature: Definição do canal de envio do contato

    Scenario: Definir canal de envio para um contato
        Given que o usuário acessou a tela de cadastro de contatos
        When ele preencher o nome "Carla", telefone "117777777" e canal "SMS"
        And clicar em "Salvar"
        Then o contato "Carla" deve exibir o canal "SMS"
    
    Scenario: Definir novo canal ao editar um contato existente
        Given que o usuário visualiza a lista com o contato "Beatriz", canal "SMS"
        When ele alterar o canal para "Email"
        And clicar em "Salvar"
        Then o contato "Beatriz" deve exibir o canal "Email"
    Scenario: Selecionar um canal de envio inválido
        Given que o usuário está cadastrando um contato
        When ele selecionar o canal "Pombo-Correio"
        Then o sistema deve exibir a mensagem "Canal de envio não suportado"
            