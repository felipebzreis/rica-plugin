---
name: para-onde-foi-o-dinheiro
description: Mostra para onde foi o dinheiro num período, compara meses, aponta os maiores gastos e confere caixas, metas e patrimônio na Rica. Use quando a pessoa perguntar quanto gastou, em quê, se o mês fechou no azul, como está o orçamento, o patrimônio ou pedir um raio-x das finanças.
---

# Para onde foi o dinheiro

Só consulta. Nada é alterado aqui.

## 1. Período

Combine o período antes de buscar (este mês, o mês passado, os últimos três meses). Use datas `yyyy-MM-dd`.

## 2. Lançamentos

- `listar-lancamentos-rica` com `dados.de`, `dados.ate` e, se precisar, `limite` (até 2000). Filtre por `pessoaId`, `contaId` ou `categoriaId` quando a pergunta for específica.
- `listar-categorias-rica` e `listar-caixas-rica` para dar nome ao que veio nos lançamentos.
- Some por categoria e por mês pelo `tipo` de cada lançamento: `ENTRADA` é dinheiro que chegou; `SAIDA` é gasto; `INVESTIMENTO` e `PROVISAO` são dinheiro guardado. `CIRCULAR` (transferência entre contas próprias, pagamento de fatura, resgate) e `EXCLUIDO` não entram na conta. Use `valorContabilCaixa` para somar.

## 3. Metas e caixas

- `listar-metas-rica`: valor da meta e andamento do ciclo atual. Diga quais metas estão estouradas ou perto do limite.
- `obter-evolucao-rica` e `listar-conquistas-rica`: a evolução dos objetivos financeiros.

## 4. Patrimônio (se a pessoa pedir)

- `listar-contas-rica` e `listar-cartoes-rica`: saldos e faturas.
- `listar-investimentos-rica`: bens, dívidas e posições importadas (B3 e Open Finance).

## Entrega

Comece pela resposta em uma frase (ex.: "Em outubro saíram R$ 7.840,00, R$ 620,00 a mais que em setembro"). Depois:

1. os maiores gastos por categoria, com valores e comparação com o período anterior;
2. o que chamou atenção, sempre ligado a um dado;
3. uma ou duas ações práticas (ajustar uma meta, criar uma caixa, revisar uma categoria), oferecendo fazer pela Rica.

Valores em reais com duas casas (R$ 1.234,56). Se faltar dado (conta sem conexão, lançamentos sem categoria), diga o que falta em vez de estimar.
