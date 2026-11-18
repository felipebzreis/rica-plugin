---
name: registrar-lancamentos
description: Registra, corrige e remove lançamentos na Rica, incluindo parcelados e recorrentes, e recategoriza gastos, sempre mostrando os dados antes de gravar. Use quando a pessoa contar um gasto ou recebimento, pedir para lançar, corrigir valor, data ou categoria, parcelar, criar uma conta fixa ou apagar um lançamento.
---

# Registrar lançamentos

Precisa da permissão de alteração (`planejamento:write`).

## Criar

1. Encontre a conta com `listar-contas-rica` (ou `listar-cartoes-rica` para compra no cartão). A conta define a pessoa e o projeto. Se houver mais de uma parecida, pergunte.
2. Confira a categoria com `listar-categorias-rica`. Ela precisa existir; se não existir, ofereça criar (veja `categorias-e-caixas`) ou deixe sem categoria para a Rica classificar.
3. Mostre: conta, pessoa, nome, valor, tipo, data e categoria. Espere o sim.
4. `criar-lancamento-rica` com `dados.contaId`, `nome`, `valor` (número) e `tipo`. Use `dataCompra` para a data.

Quando a pessoa conta várias compras de uma vez, monte a lista inteira, mostre numa tabela e grave depois de um sim único, uma chamada por lançamento.

Séries:

- parcelado: de 2 a 48 parcelas;
- recorrente (aluguel, assinatura): informe `dataFimRecorrencia`; sem ela, a Rica gera até um ano a partir do primeiro vencimento, no máximo 1.000 lançamentos;
- escolha parcelamento **ou** recorrência, nunca os dois;
- a configuração da série só existe na criação.

## Corrigir

1. Encontre o lançamento com `listar-lancamentos-rica`, filtrando por período (`de`, `ate`) e, se souber, conta ou categoria.
2. Mostre o lançamento atual e a mudança.
3. `atualizar-lancamento-rica` só com os campos que mudam e com a `versaoEsperada` que veio na leitura.

A troca manual de categoria ou tipo fica marcada como feita pela pessoa: a classificação automática não a desfaz.

Se a resposta disser que o lançamento mudou durante a operação, leia de novo e refaça. Se disser que ele está em categorização, espere alguns minutos e tente de novo.

## Remover

Mostre qual lançamento sai e peça confirmação. Só então chame `remover-lancamento-rica` com `confirmar: true`. Numa série, sai só a ocorrência indicada. Se o lançamento veio do banco (`importadoViaOpenFinance: true`), pergunte antes se a pessoa prefere mudar o tipo para excluído, que tira o valor das contas sem apagar o registro.

## Conferir

O lançamento aparece no app da Rica na hora, com origem "Rica MCP" no histórico. Se o lançamento conta para uma meta com notificações de andamento, a Rica avisa a pessoa por conta própria.
