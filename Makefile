build:
	sudo docker build -t godockerweb - < docgo

run:
	sudo docker run -d -p 8080:8080 godockerweb