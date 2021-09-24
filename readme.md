Docker Container for dumping/exporting postgres schema

Example usage:
```
docker build -t postgres-schema-dump .

docker run -it --rm \
  -v /tmp/db-schema-dump-dir:/dump \
  -e HOST="<<db hostname>>" \
  -e PORT="5432" \
  -e DNAME="<<db name>>" \
  -e PGUSER="<<db user name>>" \
  -e PASSWORD="<<db password>>" \
  postgres-schema-dump dump
```