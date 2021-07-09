# WordPress

WordPress dockerization boilerplate

## How to use

1. Build the base PHP image from /php directory by issuing following 
    commands (assuming repository root is current working directory):

```bash
cd php
chmod +x build.bash
./build.bash
```

2. Edit the `docker-compose.yml` and/or `.env-docker` files as needed.

3. Run the container by:

```bash
./start
```

4. Stop the container by:

```bash
./stop
```

# Setup Script

This script downloads latest distribution of WordPress and put it where it should be.