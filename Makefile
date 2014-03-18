build:
	go build .

install:
	go install .

docker-build-basic:
	sudo docker build -t godockerweb-basic - < basic.docker

docker-build-withssh:
	sudo docker build -t godockerweb-withssh - < withssh.docker

docker-run-basic:
	sudo docker rm mygodockerweb-basic | true
	sudo docker run -d -p 8080:8080 --name mygodockerweb-basic godockerweb-basic
	sudo docker ps

docker-run-withssh:
	sudo docker rm mygodockerweb-withssh | true
	sudo docker run -t -d -p 8081:8080 -p 8082:22 --name mygodockerweb-withssh godockerweb-withssh
	sudo docker ps

docker-restart-basic:
	make docker-stop-basic
	make docker-run-basic

docker-restart-withssh:
	make docker-stop-withssh
	make docker-run-withssh

docker-stop-basic:
	sudo docker kill mygodockerweb-basic
	sudo docker ps

docker-stop-withssh:
	sudo docker kill mygodockerweb-withssh
	sudo docker ps

docker-update-basic:
	echo "this is not working waiting for docker exec"
	#sudo docker exec mygodockerweb-basic /update.sh

docker-update-withssh:
	echo "this is not working waiting for docker exec"
	#sudo docker exec mygodockerweb-basic /withssh.sh
