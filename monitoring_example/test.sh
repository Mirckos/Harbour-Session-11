#!/usr/bin/env fish

while true
    curl -s -X POST http://localhost:8000/predict \
         -H "Content-Type: application/json" \
         -d '{"text":"i want to buy something"}'
    sleep 0.1
end
