---
name: objetivos-metas-e-habitos
description: Monta e acompanha objetivos, metas e hábitos na Rica, financeiros (reserva, viagem, quitar dívida) ou não (treinar, ler, estudar), marca o que a pessoa fez e configura os avisos da meta. Use quando a pessoa falar em sonho, objetivo, reserva, guardar dinheiro, meta mensal, limite de gasto, hábito, "fiz" ou "não fiz", ou quiser saber como está indo.
---

# Objetivos, metas e hábitos

A Rica segue a cadeia **objetivo → realização (resultado e processo) → meta**. O resultado é aonde a pessoa quer chegar; o processo é o que ela repete; a meta acompanha o processo em ciclos.

## Consultar

- `listar-objetivos-rica`: cada objetivo traz `financeiro: true` (valores, caixas, ciclos) ou `false` (hábito: saúde, estudo, rotina);
- `listar-metas-rica`: valor ou vezes por ciclo, andamento do ciclo atual, avisos e notificações;
- `listar-objetivos-nao-financeiros-rica`: hábitos com nota de 0 a 5, ciclo atual, hoje e sequência;
- `listar-ciclos-rica`, `obter-evolucao-rica` e `listar-conquistas-rica`: histórico dos objetivos financeiros.

Ao contar como está indo, fale do que foi feito e do que falta no ciclo, com números.

## Criar

Conduza como conversa, uma pergunta por vez: o que a pessoa quer, até quando, quanto ou quantas vezes, e para quem (`listar-pessoas-rica`). Para meta financeira, veja as caixas com `listar-caixas-rica`; o dinheiro da meta conta pelas categorias da caixa.

Mostre a cadeia inteira antes de gravar:

1. `criar-objetivo-rica`: nome e pessoas. `financeiro` é definido aqui e não muda depois;
2. `criar-realizacao-objetivo-rica`: o resultado (ex.: juntar R$ 12.000,00 até dezembro) e o processo (ex.: guardar R$ 1.000,00 por mês; ou treinar 3 vezes por semana);
3. `criar-meta-rica`: financeira com processo, nome, valor, caixas e projetos (`projetosIds: []` vale para todos); hábito com processo, nome e vezes por ciclo.

Valores realistas: compare com o que a pessoa já movimenta (`listar-lancamentos-rica` dos últimos meses) e diga se a meta cabe. Frequências: diária, semanal, quinzenal, mensal, bimestral, trimestral, semestral, anual e uma vez.

## Avisos da meta

- `avisos`: mensagens que a Rica manda por conta própria (lembrete do hábito, aviso de dia de guardar dinheiro), com horário;
- `faixasNotificacao`: respostas da Rica ao andamento (ex.: avisar ao chegar a 80% do limite).

Os avisos ficam sempre na meta, nunca no objetivo. Proponha um aviso simples ao criar a meta e pergunte se a pessoa quer.

## Marcar hábito

Quando a pessoa disser que fez (ou não fez), use `marcar-objetivo-rica` na meta do hábito: quantidade 1 ou mais é "fiz" (o total do dia), 0 é "não fiz". Confirme a meta antes se houver mais de uma parecida, e responda com o andamento do ciclo.

## Mudar ou remover

Editar uma meta financeira refaz os ciclos. Avise antes.

Para remover, diga o que sai junto e espere o sim antes de enviar `confirmar: true`:

| Remoção | Sai junto |
| --- | --- |
| Objetivo | realizações e metas ligadas; no hábito, as marcações |
| Realização | as metas do processo dela |
| Meta financeira | ciclos e avisos |
| Meta de hábito | as marcações |

Erros de validação voltam com `codigo` e `mensagem`. Corrija o campo indicado e tente de novo.
