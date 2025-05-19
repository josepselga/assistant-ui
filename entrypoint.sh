#!/bin/sh
echo "OPENAI_API_KEY=\"$OPENAI_TOKEN\"" > /realster/realster/.env
exec "$@"