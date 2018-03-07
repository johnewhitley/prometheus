import requests

[ provide credential variables etc ]

grafana_url = os.path.join('http://', '%s:%u' % (grafana_host, grafana_port))
session = requests.Session()
login_post = session.post(
   os.path.join(grafana_url, 'login'),
   data=json.dumps({
      'user': grafana_user,
      'email': '',
      'password': grafana_password }),
   headers={'content-type': 'application/json'})

# Get list of datasources
datasources_get = session.get(os.path.join(grafana_url, 'api', 'datasources'))
datasources = datasources_get.json()

# Add new datasource
datasources_put = session.put(
   os.path.join(grafana_url, 'api', 'datasources'),
   data=json.dumps({
      'access': 'direct',
      'database': ifdb_database,
      'name': datasource_name,
      'password': ifdb_password,
      'type': 'influxdb_08',
      'url': 'http://%s:%u' % (ifdb_host, ifdb_port),
      'user': ifdb_user}),
      headers={'content-type': 'application/json'})
