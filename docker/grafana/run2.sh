echo 'Starting Grafana...'
AddDataSource() {
  curl 'http://whitleyserver.ddns.net:3000/api/datasources' \
    -X POST \
    -H 'Content-Type: application/json;charset=UTF-8' \
    --data-binary \
    '{"name":"Prometheus","type":"prometheus","url":"http://whitleyserver.ddns.net:9090","access":"proxy","isDefault":true}'
}
until AddDataSource; do
  echo 'Configuring Grafana...'
  sleep 1
done
echo 'Done!'
wait
