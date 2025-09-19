# TECH_PRJ

This project uses Docker Compose to set up the build environment for Yocto with **Kas**.

---

## Quick Start

### 1. Enter the project folder

```bash
cd TECH_PRJ
```

### 2. Start the Docker environment

```bash
docker compose up -d
```

This will launch the container(s) defined in `docker-compose.yml`.

### 3. Manage the container

* Start a stopped container:

```bash
docker start <container-name>
```

* Access the container shell:

```bash
docker exec -it <container-name> /bin/bash
```

Replace `<container-name>` with the name of your container (check with `docker ps -a`).

---

## 🛠 Building Yocto with Kas

Inside the container, go to your Kas project directory:

```bash
cd ${HOME}/yocto/Kas
```

Run the entrypoint script to build:

```bash
./entrypoint.sh
```
This script will:

Run kas build to build the Yocto image based on your configuration.

Drop you into a kas shell for interactive work in the build environment.
---

## Notes

* `docker compose up -d` runs in **detached mode**, so the container continues running in the background.
* Use `docker compose down` to stop and remove the containers when you’re done.
* If you want to see logs:

```bash
docker compose logs -f
```

---

