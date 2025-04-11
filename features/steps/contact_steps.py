# features/steps/contact_steps.py

from behave import given, when, then

@given('que o usuário acessou a tela de cadastro de contatos')
def step_acessou_tela_cadastro(context):
    context.contato = {}
    print("Tela de cadastro aberta")

@when('ele preencher o nome "{nome}", telefone "{telefone}" e canal "{canal}"')
def step_preenche_campos(context, nome, telefone, canal):
    context.contato = {
        'nome': nome,
        'telefone': telefone,
        'canal': canal
    }
    
@when('clicar em "Salvar"')
def step_clicar_salvar(context):
    if not hasattr(context, 'lista_contatos'):
        context.lista_contatos = []
    context.lista_contatos.append(context.contato)

@then('o novo contato com nome "{nome}" deve aparecer na lista de contatos de emergência')
def step_verifica_contato_na_lista(context, nome):
    nomes = [contato['nome'] for contato in context.lista_contatos]
    assert nome in nomes


@given('que o usuário visualiza a lista de contatos com nome "{nome}", telefone "{telefone}" e canal "{canal}"')
def step_visualiza_lista(context, nome, telefone, canal):
    context.lista_contatos = [{
        'nome': nome,
        'telefone': telefone,
        'canal': canal
    }]
    context.contato = context.lista_contatos[0]

@when('ele alterar o telefone para "{novo_telefone}"')
def step_altera_telefone(context, novo_telefone):
    context.contato['telefone'] = novo_telefone

@then('o contato "{nome}" deve exibir o telefone "{telefone}"')
def step_verifica_telefone(context, nome, telefone):
    contato = next(c for c in context.lista_contatos if c['nome'] == nome)
    assert contato['telefone'] == telefone

@when('ele clicar em "Remover" no contato "{nome}"')
def step_clica_remover(context, nome):
    context.contato = next(c for c in context.lista_contatos if c['nome'] == nome)
    context.lista_contatos.remove(context.contato)

@when('confirmar a exclusão')
def step_confirma_exclusao(context):
    pass 

@then('o contato "{nome}" não deve mais aparecer na lista')
def step_verifica_remocao(context, nome):
    nomes = [c['nome'] for c in context.lista_contatos]
    assert nome not in nomes

@then('o contato "{nome}" deve exibir o canal "{canal}"')
def step_verifica_telefone(context, nome, canal):
    contato = next(c for c in context.lista_contatos if c['nome'] == nome)
    assert contato['canal'] == canal