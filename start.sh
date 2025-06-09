#!/bin/bash
PORT=${PORT:-8931}
echo "Iniciando MCP Server na porta $PORT"
node cli.js --headless --browser chromium --vision --no-sandbox --port $PORT