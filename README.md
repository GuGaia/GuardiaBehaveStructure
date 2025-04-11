# 📱 Guardia - Testes BDD de Contatos de Emergência

Este projeto implementa testes de aceitação (BDD) utilizando o [Behave](https://behave.readthedocs.io/) para validar o comportamento do cadastro, edição, remoção e definição de canais de envio dos contatos de emergência da aplicação **Guardia**.

---

## 🧪 Tecnologias

- 🐍 Python 3.10+
- 📦 Behave
- 💻 VSCode (recomendado)
- 🧹 pytest-bdd-linter (opcional)

---

## 🧭 Estrutura do Projeto
📁 features/ ├── 📄 cadastro_contatos.feature ├── 📄 edicao_contatos.feature ├── 📄 remocao_contatos.feature ├── 📄 definicao_canal.feature └── 📁 steps/ └── 📄 step_definitions.py

---

## ▶️ Como rodar os testes

### 1. Instale as dependências:

pip install behave

### 2. Execute todos os testes:

behave
