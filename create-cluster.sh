export COUCHBASE_CLI=/Users/arungupta/tools/Couchbase-Server-4.0.app/Contents/Resources/couchbase-core/bin/couchbase-cli
export primary=$1
shift
for ip in "$@"
do
    $COUCHBASE_CLI \
    server-add \
    --cluster=$primary:8091 \
    --user Administrator \
    --password password \
    --server-add=$ip \
    --server-add-username=Administrator \
    --server-add-password=password
done

