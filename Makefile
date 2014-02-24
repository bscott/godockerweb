build:
	sudo docker build -t godockerweb - < goweb.docker

run:
	sudo docker run -d -p 8080:8080 godockerweb
