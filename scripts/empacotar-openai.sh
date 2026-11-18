#!/usr/bin/env bash
# Gera o ZIP do plugin Rica para o painel de plugins da OpenAI.
# O pacote leva plugin.json, mcp.json, skills, assets, README e LICENSE
# na raiz, sem os arquivos que só o Claude usa.
set -euo pipefail
raiz="$(cd "$(dirname "$0")/.." && pwd)"
plugin="$raiz/plugins/rica"
"$raiz/scripts/validar.sh" >/dev/null
versao="$(python3 -c 'import json,sys;print(json.load(open(sys.argv[1]))["version"])' "$raiz/openai/plugin.json")"
mkdir -p "$raiz/dist"
destino="$raiz/dist/rica-openai-$versao.zip"
rm -f "$destino"
# plugin.json e mcp.json vêm de openai/; o resto, da pasta do plugin.
(cd "$raiz/openai" && zip -qX "$destino" plugin.json mcp.json)
(cd "$plugin" && zip -qrX "$destino" README.md LICENSE skills assets -x '*.DS_Store' -x '__MACOSX/*')
echo "$destino"
unzip -l "$destino" | tail -n +4 | sed '$d' | sed '$d' | awk '{print "  " $4}'
