run:
	docker run --name neovim -v $(PWD)/nvim:/home/user/.config/nvim -it neovim:latest

build:
	docker build -t neovim .

clean:
	docker rmi neovim:latest

shell:
	docker exec -it neovim bash
