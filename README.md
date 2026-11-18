# Rica para Claude, ChatGPT e Codex

Este repositório traz o plugin **Rica**, para quem usa a [Rica](https://rica.com.br) para organizar as próprias finanças e as da família. O mesmo plugin funciona no Claude Code, no Codex, no Claude e no ChatGPT: o conector e as skills são os mesmos, e só os manifestos mudam.

O plugin está em [`plugins/rica`](plugins/rica). Lá estão a descrição completa, o que ele acessa e os links de documentação, suporte, privacidade e termos.

Planejadores financeiros têm um plugin próprio, a [Rica Pro](https://github.com/felipebzreis/rica-pro-plugin).

## Instalar no Claude Code

```text
/plugin marketplace add https://github.com/felipebzreis/rica-plugin.git
```

Depois, num segundo comando:

```text
/plugin install rica@socialrica
```

Na primeira consulta, o Claude Code abre o login da Rica no navegador.

## Instalar no Codex

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

## Estrutura

| Arquivo | Para quê |
| --- | --- |
| `plugins/rica/skills/` | Skills compartilhadas pelas duas plataformas |
| `plugins/rica/.claude-plugin/plugin.json` e `.mcp.json` | Manifesto e conector do Claude |
| `plugins/rica/.codex-plugin/plugin.json` | Manifesto do Codex (usa o mesmo `.mcp.json`) |
| `openai/plugin.json` e `openai/mcp.json` | Manifesto portátil da OpenAI, usado só no ZIP do diretório do ChatGPT |
| `.claude-plugin/marketplace.json` | Marketplace do Claude Code |
| `.agents/plugins/marketplace.json` | Marketplace do Codex |
| `scripts/validar.sh` | Confere os manifestos e as skills |
| `scripts/empacotar-openai.sh` | Gera o ZIP para o painel de plugins da OpenAI |

## Licença

MIT. O serviço Rica e a marca Rica não estão cobertos por ela.
