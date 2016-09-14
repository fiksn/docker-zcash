.PHONY:	build run install start stop rm push

build:
	time docker build -t fiksn/zcash .

run:
	@docker run -d --name zcash -v ~/.zcash:/root/.zcash fiksn/zcash

install: 
	@mkdir -p ${HOME}/bin && cp -f ./zcash-cli ${HOME}/bin/zcash-cli && echo "zcash-cli copied, now just place \"export PATH=\$$PATH:\$$HOME/bin\" somewhere or temporarily set it"

start:
	@docker start zcash

stop:
	@docker stop zcash

rm:
	@docker rm -f zcash

push:
	@docker push fiksn/zcash
