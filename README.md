# FastAPI-hello
Using Docker  to deploy a lightweight Python REST API


### Build the docker image
```bash
docker build -t fastapi:latest .
```

### Create and run a container
```bash
docker run --name fastapi -p 5057:5057 --rm fastapi:latest
```