include .env

P=5000

run:
	docker run -d \
	-e REGISTRY_HTTP_ADDR=0.0.0.0:5001 \
	-p $P:$P \
	--restart=always \
	--name $(REG_NAME) \
	-v $(REG_PATH):/var/lib/registry \
	registry:2

stop:
	docker container stop $(REG_NAME)

rm:
	docker container rm -v $(REG_NAME)
