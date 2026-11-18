# Rica

Plugin oficial da [Rica](https://rica.com.br) para quem organiza as próprias finanças e as da família. Com ele, o Claude, o Claude Code, o ChatGPT e o Codex conversam com a sua conta da Rica: mostram para onde foi o dinheiro, registram e corrigem gastos, conectam seus bancos pelo Open Finance e montam objetivos, metas e hábitos com você.

É preciso ter uma conta da Rica com plano ativo. Cada pessoa entra com a própria conta e vê só os próprios dados.

## O que vem no plugin

- **Conector Rica**: servidor MCP remoto em `https://mcp.rica.com.br/mcp`, com as consultas e alterações da sua conta.
- **Skills** com os roteiros mais comuns:
  - `primeiros-passos`: conectar, conferir a conta e resolver erros;
  - `para-onde-foi-o-dinheiro`: gastos por categoria e por mês, metas e patrimônio;
  - `registrar-lancamentos`: registrar, corrigir e remover lançamentos, parcelados e recorrentes;
  - `objetivos-metas-e-habitos`: objetivos, metas, hábitos, marcações e avisos;
  - `categorias-e-caixas`: categorias, conceitos e caixas do orçamento;
  - `contas-e-open-finance`: pessoas, contas, cartões, investimentos e as conexões com bancos e B3.

## Como o acesso funciona

Na primeira chamada, o aplicativo abre o login da Rica em `entrar.rica.com.br` (OAuth 2.0 com PKCE). A senha não passa pelo Claude nem pelo ChatGPT. São pedidas duas permissões: `planejamento:read`, para consultas, e `planejamento:write`, para alterações. Remoções exigem `confirmar: true`, e as skills mostram os dados antes de qualquer gravação.

Para cortar o acesso, remova ou desconecte a Rica no aplicativo.

## O que o plugin envia e recebe

O plugin não roda código na sua máquina. Ele só declara o conector remoto da Rica e as skills (arquivos de texto). Os pedidos vão do aplicativo de IA para `mcp.rica.com.br`, operado pela Social Rica Ltda. As respostas não trazem senhas, tokens de Open Finance nem dados de pagamento. A conexão com o banco é autorizada no próprio banco, por um link da Rica. O conector não faz PIX, pagamentos nem compra ou venda de investimentos. Tudo o que ele devolve fica na conversa e segue as regras do aplicativo de IA que você usa.

## Instalar

No Claude Code:

```text
/plugin marketplace add https://github.com/felipebzreis/rica-plugin.git
```

Depois, num segundo comando:

```text
/plugin install rica@socialrica
```

No Codex:

```bash
codex plugin marketplace add https://github.com/felipebzreis/rica-plugin.git
```

Depois, instale o plugin e entre com a sua conta da Rica:

```bash
codex plugin add rica@socialrica
```

```bash
codex mcp login rica
```

O segundo comando abre o login da Rica no navegador. Feito o login, abra uma sessão nova do Codex.

No Claude (web, desktop e celular) e no ChatGPT, procure **Rica** no diretório de conectores e plugins ou adicione o conector personalizado `https://mcp.rica.com.br/mcp`.

## Links

- Documentação: https://base.rica.com.br/plataforma/mcp
- Suporte: https://base.rica.com.br/ajuda
- Privacidade: https://socialrica.com.br/politicadeprivacidade
- Termos de uso: https://socialrica.com.br/termosdeuso

## Licença

Os arquivos deste plugin são distribuídos sob a licença MIT. O serviço Rica e a marca Rica não estão cobertos por ela.
