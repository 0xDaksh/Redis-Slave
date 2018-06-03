# Redis Slaves Made Easy.

This container takes all the abstractions away while making a redis slave instead of writing a config.

### Supported Tags:

- latest (uses redis:latest)
- alpine (uses redis:alpine)


### Environment Variables:

- GET_HOSTS_FROM
	- dns (if your cluster includes a dns service, this will access redis-master from the dns)
	- env (if your cluster doesn't include a dns server, this will access redis-master from environment)
- REDIS_MASTER_SERVICE_HOST
	- This variable takes in your redis master service's host, you don't need to specify this if you're running kubernetes.
