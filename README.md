# Docker Self-Hosted Services

A collection of Docker Compose services for running a practical self-hosted server. This repository is intended to make deploying and managing common infrastructure simple, repeatable, and easy to maintain.

The goal is to provide sensible defaults, organized service configurations, persistent data storage, and straightforward management commands.

---

## Included Services

Depending on your deployment, this repository may include services such as:

- Reverse Proxy
- Headscale
- Nginx
- Snipe-IT
- OpenSpeedTest
- Utility containers
- Supporting databases
- Networking components
- Monitoring or maintenance tools

Each service is configured using Docker Compose and stores its persistent data outside of the containers.

---

# Requirements

- Docker Engine
- Docker Compose (v2)
- Linux server (recommended)
- Git

Verify your installation:

```bash
docker --version
docker compose version
git --version
```

---

# Clone the Repository

```bash
git clone https://github.com/gmcpda-guard/docker.git
cd docker
```

---

# Configuration

Copy any example environment files before starting the stack.

Example:

```bash
cp .env.example .env
```

Edit the environment file with your preferred settings.

```bash
nano .env
```

Configure items such as:

- Domain names
- Email addresses
- Database passwords
- API keys
- Time zone
- User IDs
- Group IDs

---

# Starting the Stack

Start all services:

```bash
docker compose up -d
```

View running containers:

```bash
docker compose ps
```

View logs:

```bash
docker compose logs -f
```

---

# Stopping the Stack

Stop containers:

```bash
docker compose down
```

Stop without removing networks:

```bash
docker compose stop
```

Restart everything:

```bash
docker compose restart
```

---

# Updating

Pull the latest repository changes:

```bash
git pull
```

Pull updated container images:

```bash
docker compose pull
```

Recreate containers using the latest images:

```bash
docker compose up -d
```

Remove unused images (optional):

```bash
docker image prune -f
```

---

# Service Data

Persistent application data should be stored in Docker volumes or bind-mounted directories.

This allows services to be updated without losing configuration or user data.

Always include persistent data in your backup strategy.

---

# Reverse Proxy

The reverse proxy provides a single entry point for web services.

Typical routing might look like:

| Service | URL |
|---------|-----|
| Headscale | https://headscale.example.com |
| Snipe-IT | https://assets.example.com |
| OpenSpeedTest | https://speedtest.example.com |
| Nginx | https://www.example.com |

Replace these hostnames with your own domain names.

---

# Managing Individual Services

Start one service:

```bash
docker compose up -d SERVICE_NAME
```

Restart one service:

```bash
docker compose restart SERVICE_NAME
```

View logs for one service:

```bash
docker compose logs -f SERVICE_NAME
```

Replace `SERVICE_NAME` with the appropriate container name.

---

# Useful Docker Commands

List running containers:

```bash
docker ps
```

List all containers:

```bash
docker ps -a
```

List images:

```bash
docker images
```

List volumes:

```bash
docker volume ls
```

List networks:

```bash
docker network ls
```

---

# Backups

At minimum, back up:

- Environment files
- Docker volumes
- Database data
- Uploaded files
- Configuration directories

Regular backups are strongly recommended.

---

# Troubleshooting

View logs:

```bash
docker compose logs
```

Follow logs live:

```bash
docker compose logs -f
```

Restart a service:

```bash
docker compose restart SERVICE_NAME
```

Recreate containers:

```bash
docker compose up -d --force-recreate
```

Verify container status:

```bash
docker compose ps
```

---

# Updating Docker

Keep both Docker Engine and container images up to date.

Regular updates provide:

- Security fixes
- Performance improvements
- Bug fixes
- Compatibility updates

Always review release notes before major version upgrades.

---

# Contributing

Issues and pull requests are welcome.

If you find a bug, have an improvement, or would like to add another self-hosted service, feel free to contribute.

---

# License

Refer to the repository's LICENSE file for licensing information.

---

## Disclaimer

This repository is intended as a self-hosted infrastructure toolkit. You are responsible for securing your server, maintaining backups, managing secrets, and keeping software up to date.
