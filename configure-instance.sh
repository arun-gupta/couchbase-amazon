for ip in "$@"
do
	curl -v -X POST http://$ip:8091/pools/default -d memoryQuota=300 -d indexMemoryQuota=300
	curl -v http://$ip:8091/node/controller/setupServices -d services=kv%2Cn1ql%2Cindex
	curl -v http://$ip:8091/settings/web -d port=8091 -d username=Administrator -d password=password
	curl -v -u Administrator:password -X POST http://$ip:8091/sampleBuckets/install -d '["travel-sample"]'
done

