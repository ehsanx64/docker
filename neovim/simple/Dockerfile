FROM alpine:3.9

RUN apk add bash neovim
RUN adduser -D user
RUN mkdir -p /home/user/.config/nvim

WORKDIR /home/user/.config/nvim

CMD [ "bash" ]

