---
name: contas-e-open-finance
description: Organiza pessoas, projetos, contas, cartões e investimentos na Rica e gera os links para conectar bancos pelo Open Finance e a B3. Use quando a pessoa quiser conectar o banco, puxar extratos automaticamente, cadastrar uma conta, cartão, investimento ou dívida, incluir alguém da família ou ver as conexões.
---

# Contas, cartões e Open Finance

## Como a conta é organizada

- **Pessoa**: alguém da família que participa do planejamento.
- **Projeto**: um bolso de cada pessoa (pessoal, empresa, casa). Contas e lançamentos ficam num projeto.
- **Conta** e **cartão**: onde o dinheiro passa. Podem ser conectados pelo Open Finance ou manuais.
- **Investimento**: bens, aplicações e dívidas (valor negativo).

Consulte com `listar-pessoas-rica`, `listar-projetos-rica`, `listar-contas-rica`, `listar-cartoes-rica` e `listar-investimentos-rica`.

## Conectar um banco (Open Finance)

1. `listar-conexoes-openfinance-rica` para ver o que já está conectado.
2. Confirme a pessoa e o projeto da conexão.
3. `gerar-link-openfinance-rica` com `pessoaId` e `projetoId`. Entregue o `linkReferencia` para a pessoa abrir: a autorização é feita no próprio banco, nunca na conversa.
4. Depois de autorizar, as contas e os lançamentos chegam sozinhos. Os primeiros podem levar alguns minutos; a categorização vem em seguida.

Nunca peça senha, token ou código do banco.

## Conectar a B3

`listar-autorizacoes-b3-rica` mostra as autorizações. `gerar-link-b3-rica` (com `pessoaId` e `projetoId`) gera o link de consentimento da B3 usando o CPF do cadastro da pessoa; se faltar, a pessoa cadastra o CPF no app da Rica. Nunca peça o CPF na conversa. Depois que a pessoa autorizar, `consultar-autorizacao-b3-rica` confirma e atualiza as posições.

## Cadastrar à mão

- `criar-conta-rica` e `criar-cartao-rica`: conta ou cartão manual, com dia de fechamento e vencimento da fatura no cartão;
- `criar-investimento-rica`: precisa de `projetoId`; valor positivo é bem, negativo é dívida; `taxaRendimento` é o rendimento real ao ano, já sem inflação;
- `criar-pessoa-rica`: nome e e-mail válido (pergunte o e-mail antes). Cria a pessoa com acesso próprio, sem mandar convite;
- `criar-projeto-rica`: para separar, por exemplo, as finanças da empresa.

Mostre os dados antes de gravar. Itens importados (Open Finance e B3) são só leitura.

## Remover

Remover conta, cartão ou projeto apaga também os lançamentos ligados a eles. Diga quantos lançamentos saem (`listar-lancamentos-rica` com `contaId`), espere o sim e só então envie `confirmar: true`.
