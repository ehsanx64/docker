FROM alpine:edge

RUN adduser -D user && mkdir -p /home/user/.config/nvim && \
    apk add bash curl git lua nodejs npm lazygit bottom python3 go neovim \
        ripgrep alpine-sdk --update && \
    git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim

CMD [ "bash" ]

