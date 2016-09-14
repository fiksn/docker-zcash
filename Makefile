build:
	time docker build -t fiksn/zcash .

run:
	docker run -d --name zcash -v ~/.zcash:/root/.zcash fiksn/zcash

start:
	docker start zcash

stop:
	docker stop zcash

rm:
	docker rm -f zcash

push:
	docker push fiksn/zcash
