# Hono Ping Server

A simple Hono server that responds with "pong" when you hit the `/ping` endpoint.

## Prerequisites

- Make sure you have Bun installed. You can install it by following instructions at https://bun.sh
- Docker (for containerized deployment)

## Setup

1. Install dependencies:

```bash
bun install
```

2. Build the project:

```bash
bun run build
```

## Running the Server

### Local Development

You can run the server locally in two ways:

1. Development mode (with hot reload):

```bash
bun run dev
```

2. Production mode:

```bash
bun run start
```

### Docker Deployment

1. Build the Docker image:

```bash
docker build -t hono-ping-server .
```

2. Run the container:

```bash
docker run -p 4000:4000 hono-ping-server
```

### Publishing to Docker Hub

1. Tag the image with your Docker Hub repository:

```bash
docker tag hono-ping-server juhouniversity/devopswithdocker:hono-ping
```

2. Push the image to Docker Hub:

```bash
docker push juhouniversity/devopswithdocker:hono-ping
```

To pull and run the published image:

```bash
docker pull juhouniversity/devopswithdocker:hono-ping
docker run -p 4000:4000 juhouniversity/devopswithdocker:hono-ping
```

## Testing the Server

The server will start on port 4000. You can test it by making a GET request to:

```
http://localhost:4000/ping
```
