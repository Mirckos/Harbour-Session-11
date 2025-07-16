curl https://msg-cls-demo.fly.dev/alive
curl -X POST https://msg-cls-demo.fly.dev/predict \
     -H "Content-Type: application/json" \
     -d '{"text":"Купить дешёвый iPhone"}'
curl https://msg-cls-demo.fly.dev/metrics | head
