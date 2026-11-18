---
name: primeiros-passos
description: Conecta a Rica, confere a conta e resolve erros de login, plano ou permissão. Use na primeira vez que a pessoa usa a Rica aqui, quando as ferramentas da Rica não aparecerem na sessão, quando uma delas responder com erro ou quando a pessoa perguntar o que a Rica faz.
---

# Primeiros passos com a Rica

A Rica organiza as finanças da pessoa e da família: contas, cartões, lançamentos, categorias, caixas, objetivos, metas, hábitos e patrimônio. O login é feito numa página da Rica (`entrar.rica.com.br`). A senha nunca passa pela conversa.

## Conferir a conexão

1. Chame `minha-sessao-rica`. Ela devolve quantas pessoas, contas, lançamentos, categorias, caixas, objetivos e metas a conta tem.
2. Chame `listar-pessoas-rica` e mostre os nomes. Pergunte se é a conta certa.
3. Diga em uma frase o que dá para fazer: ver para onde foi o dinheiro, registrar gastos, conectar bancos, montar objetivos, metas e hábitos e organizar categorias e caixas.
4. Se a conta estiver vazia (sem contas ou lançamentos), sugira começar por `contas-e-open-finance`.

## Se as ferramentas da Rica não aparecerem

Sem `minha-sessao-rica` disponível, a conexão ainda não foi autorizada. Os dados da Rica só vêm pelo conector: não abra a Rica no navegador nem tente ler as telas para responder.

- **Claude ou ChatGPT (web, desktop e celular):** em Conectores ou Aplicativos, conecte a Rica e entre com a conta da Rica.
- **Claude Code:** a autorização abre pelo próprio conector na primeira chamada. Se não abrir, peça para rodar `/mcp`, escolher `rica` e autenticar.
- **Codex:** peça para rodar no terminal `codex mcp login rica`, entrar com a conta da Rica e abrir uma sessão nova. Se você puder rodar comandos, ofereça rodar por ela.

Depois do login, chame `minha-sessao-rica` de novo.

## Regras que valem em toda tarefa

- Use só identificadores que a Rica devolveu. Encontre pessoas, contas, categorias e metas pelas listagens, a partir dos nomes que a pessoa usar.
- Antes de qualquer alteração, mostre o item atual, a mudança e o que mais será afetado. Faça uma mudança por vez.
- Remoções exigem `confirmar: true`. Envie só depois de um sim explícito.
- Separe o que é dado da Rica do que é sua interpretação. Não recomende produto financeiro específico.
- O relatório do Serasa (`solicitar-serasa-rica`) é pago e cobra o cartão salvo na Rica: mostre a prévia com o valor e só confirme depois do sim.

## Erros comuns

| Mensagem | O que dizer |
| --- | --- |
| "Voce ainda nao tem um PlanoAssinante ativo na Rica…" | A conta não tem plano ativo. Assine ou regularize em rica.com.br e tente de novo. |
| "Escopo insuficiente para executar …" | A conexão foi autorizada só para consulta. Desconecte a Rica e conecte de novo, aceitando consulta e alteração. |
| "A tool destrutiva … exige confirmar=true." | A ação pede confirmação. Mostre o que será feito e espere o sim. |
| "… nao pertence a estrutura autenticada." ou "nao encontrado" | O item não está nesta conta. Liste de novo e escolha da lista. |
| Outras mensagens da Rica | Mostre a mensagem como veio: ela já é a frase para a pessoa. Se repetir, indique o suporte pelo WhatsApp da Rica (https://wa.me/5521936194570). |

Pelo conector não dá para fazer PIX, pagamentos, compras ou vendas de investimentos, nem enviar mensagens. Lembretes gerais e resumos por e-mail ficam na conversa da Rica no WhatsApp.

Documentação completa: https://base.rica.com.br/plataforma/mcp
