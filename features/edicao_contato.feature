Feature: Edição de contatos de emergência

    Scenario: Editar as informações de um contato existente
        Given que o usuário visualiza a lista de contatos com nome "Joao", telefone "119999999" e canal "SMS"
        When ele alterar o telefone para "118888888"
        And clicar em "Salvar"
        Then o contato "Joao" deve exibir o telefone "118888888"
    
    Scenario: Alterar apenas o canal de envio de um contato
        Given que o usuário visualiza a lista com o contato "Lucas", telefone "11999999999" e canal "SMS"
        When ele alterar o canal para "WhatsApp"
        And clicar em "Salvar"
        Then o contato "Lucas" deve exibir o canal "WhatsApp"
    Scenario: Tentar salvar edição com telefone inválido
        Given que o usuário visualiza a lista com o contato "Marina"
        When ele alterar o telefone para "ABC123"
        And clicar em "Salvar"
        Then o sistema deve exibir a mensagem "Telefone inválido"
        And as alterações não devem ser salvas