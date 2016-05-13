#aws ec2 create-security-group --group-name my-couchbase-sg --description "My Couchbase Security Group"
#aws ec2 authorize-security-group-ingress --group-name my-couchbase-sg --port 8091-8093 --protocol tcp --cidr 0.0.0.0/0
#aws ec2 create-key-pair --key-name my-couchbase-key > my-couchbase-key.pem
#aws ec2 run-instances --image-id ami-db95ffbb --count 1 --instance-type m3.large --key-name my-couchbase-key --security-groups my-couchbase-sg
aws ec2 run-instances --image-id ami-db95ffbb --count 1 --instance-type m3.large --key-name my-couchbase-key --security-groups "Couchbase Server Community Edition-4-0-0-AutogenByAWSMP-"

