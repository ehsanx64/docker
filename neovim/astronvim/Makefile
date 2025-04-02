run:
	docker run --name astronvim-app -it astronvim:app

build:
	docker build -t astronvim .

build-app:
	docker commit astronvim astronvim:app

clean:
	docker rmi astronvim:app
	docker rmi astronvim:latest

shell:
	docker attach astronvim-app
