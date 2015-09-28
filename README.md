docker-ubuntu-sharelatex
========================

Minimal Docker Image running ShareLaTeX

Run it using

```
docker run -d -p 3000:80 sbminimal/docker-ubuntu-sharelatex
```

and access it via your webbrowser at [http://127.0.0.1:3000/](http://127.0.0.1:3000/).

If you want to persist your data, you can link the /data directory to some "local-directory" using

```
docker run -d -p 3000:80 -v <local-directory>:/data sbminimal/docker-ubuntu-sharelatex
```

> Note: ShareLaTeX is internally proxied by nginx, running on port 80, but the current ShareLaTeX config file expects the docker container to be accessible from outside via http://localhost:3000, so we bind host port 3000 to container port 80.
If you intend to change this, you should change /sharelatex/config/settings.development.coffee inside the container accordingly.

> To create a initial admin account in a running container with CONTAINER_ID use
```
docker exec -it CONTAINER_ID /create-admin-user.sh ADMIN-EMAIL-ADDRESS
```

> You might want to add smallfiles = true to /etc/mongodb.conf inside the container for smaller setups, or start the container with -D MONGOD_SMALLFILES=true.


