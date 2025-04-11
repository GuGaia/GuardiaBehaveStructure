Feature: Remoção de contatos de emergência

    Scenario: Remover um contato da lista
        Given que o usuário visualiza a lista de contatos com nome "Joao", telefone "119999999" e canal "SMS"
        When ele clicar em "Remover" no contato "Joao"
        And confirmar a exclusão
        Then o contato "Joao" não deve mais aparecer na lista
    
    Scenario: Cancelar a remoção de um contato
        Given que o usuário acessou a lista com o contato "Carlos"
        When ele clicar em "Remover" no contato "Carlos"
        And cancelar a exclusão
        Then o contato "Carlos" deve continuar na lista
    Scenario: Tentar remover um contato que não está na lista
        Given que a lista de contatos está vazia
        When ele tentar remover o contato "Zelda"
        Then o sistema deve exibir a mensagem "Contato não encontrado"