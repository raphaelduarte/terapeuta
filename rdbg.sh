#!/bin/bash

# Definir a porta para o rdbg (deve corresponder à porta mapeada no docker-compose.yml)
RDBG_PORT=1234

# Inicia o rdbg com a aplicação Rails
# Pode variar dependendo de como você normalmente inicia sua aplicação
bundle exec rdbg -O --port=${RDBG_PORT} -- rails server
