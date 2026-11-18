---
name: categorias-e-caixas
description: Organiza categorias, conceitos e caixas da Rica, que definem como os gastos são classificados e somados no orçamento. Use quando a pessoa pedir para criar, juntar, renomear ou remover categorias ou caixas, quando muitos lançamentos vierem na categoria errada ou quando ela quiser montar o orçamento por caixas.
---

# Categorias, conceitos e caixas

- **Categoria**: o assunto do lançamento (Mercado, Restaurantes, Aluguel).
- **Conceito**: explica à Rica o que entra na categoria (ex.: "padaria e hortifruti contam como Mercado"). É o que melhora a classificação automática.
- **Caixa**: junta categorias num bloco do orçamento (Moradia, Dia a dia, Investimentos). Uma categoria pode estar em mais de uma caixa. As metas financeiras contam pelas caixas.

## Consultar

`listar-categorias-rica`, `listar-conceitos-categoria-rica`, `listar-caixas-rica` e `obter-uso-taxonomia-rica` (quanto falta para o limite).

## Limites

130 categorias e 30 caixas por conta; 100 conceitos por categoria, com nome de até 80 caracteres e definição de até 300.

## Mudar

1. `obter-uso-taxonomia-rica` para ver o espaço disponível.
2. Liste o que existe e proponha a mudança em poucas linhas.
3. Confirme uma mudança por vez e leia de novo o item alterado.

Use só identificadores devolvidos pela Rica nas relações entre categoria e caixa. Criar com um nome que já existe atualiza o item existente.

Quando muitos lançamentos vêm na categoria errada, prefira criar ou ajustar um conceito da categoria certa a recategorizar um por um.

## Antes de remover

Remoções exigem `confirmar: true` e não são bloqueadas por uso. Mostre o impacto antes:

| Remover | Efeito |
| --- | --- |
| Categoria | os lançamentos ficam sem categoria e as caixas perdem a categoria |
| Caixa | as metas perdem a caixa |
| Conceito | a Rica deixa de usar essa explicação para classificar |

Para medir o uso de uma categoria, consulte `listar-lancamentos-rica` com `categoriaId` num período.

## Erros

`limite_taxonomia_excedido`, `limite_caracteres_conceito_excedido`, `nome_duplicado` e `referencia_fora_escopo` não gravam parte da mudança. Explique a causa, consulte de novo e só então repita.
