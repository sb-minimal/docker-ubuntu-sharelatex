docker-ubuntu-sharelatex
========================

Minimal Docker Image running ShareLaTeX

Run it using
```
docker run -d -p 3000:3000 sbminimal/docker-ubuntu-sharelatex
```

and access it via your webbrowser at [http://127.0.0.1:3000/](http://127.0.0.1:3000/).

If you want to persist your data, you can link the /data directory to some <local-directory> using

```
docker run -d -p 3000:3000 -v <local-directory>:/data sbminimal/docker-ubuntu-sharelatex
```

