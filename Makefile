dev:
	-docker rm -f neo4j-example

	docker run \
    --publish=7474:7474 --publish=7687:7687 \
    --volume=$(shell pwd)/data:/data \
    --ulimit=nofile=40000:40000 \
    --env=NEO4J_CACHE_MEMORY=2G \
    --env=NEO4J_AUTH=none \
    --name neo4j-example \
		neo4j:3.4
