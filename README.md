# YOCTO_TECH_PROJECT – Yocto Learning Project

This project aims to learn and practice different aspects and critical tasks in Yocto, such as building images, experimenting with layers, writing recipes, and testing system customization.

The environment is containerized with Docker Compose and uses Kas to simplify Yocto builds.

## Project Goals

1-Practice setting up and building Yocto images.

2-Learn how to manage layers, recipes, and machine configurations.

3-Explore common embedded Linux tasks: kernel configuration, bootloaders, user management, sudoers configuration, CVE checks, etc.

4-Use Kas for reproducible builds and portable environments.

5-Run everything inside Docker for a clean and isolated setup.

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

1-Run kas build to build the Yocto image defined in your Kas configuration.
2-Drop you into a kas shell for interactive work in the Yocto environment.
---

## Notes

* `docker compose up -d` runs in **detached mode**, so the container continues running in the background.
* Use `docker compose down` to stop and remove the containers when you’re done.
* If you want to see logs:

```bash
docker compose logs -f
```

---

