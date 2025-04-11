Feature: Cadastro de contatos de emergência

    Scenario: Adicionar um novo contato de emergência
        Given que o usuário acessou a tela de cadastro de contatos
        When ele preencher o nome "Joao da Silva", telefone "119999999" e canal "SMS"
        And clicar em "Salvar"
        Then o novo contato com nome "Joao da Silva" deve aparecer na lista de contatos de emergência
    
    Scenario: Cadastrar contato apenas com nome e telefone
        Given que o usuário acessou a tela de cadastro de contatos
        When ele preencher o nome "Ana" e telefone "1122223333"
        And deixar o canal de envio em branco
        And clicar em "Salvar"
        Then o contato "Ana" deve aparecer na lista com canal "Não definido"
    Scenario: Tentar cadastrar um contato com telefone inválido
        Given que o usuário acessou a tela de cadastro de contatos
        When ele preencher o nome "Bruno", telefone "123", e canal "SMS"
        And clicar em "Salvar"
        Then o sistema deve exibir uma mensagem de erro "Telefone inválido"
        And o contato não deve ser salvo
    Scenario: Tentar salvar contato sem preencher nome e telefone
        Given que o usuário acessou a tela de cadastro de contatos
        When ele deixar todos os campos vazios
        And clicar em "Salvar"
        Then o sistema deve exibir a mensagem "Preencha todos os campos obrigatórios"
