# Use the latest lightweight Alpine image
FROM alpine:latest

# Install Docker CLI and the Compose plugin
RUN apk add --no-cache docker-cli docker-cli-compose

# Create a directory for your project
WORKDIR /app

# Copy your docker-compose.yaml into the container
COPY docker-compose.yaml .

# Set the entrypoint to run docker compose
# Using "up" as the default command
ENTRYPOINT ["docker", "compose"]
CMD ["up"]
