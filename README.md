# SimEmulator
## Local run
To run the application on your device without installing all dependencies, you can use Docker image. <br />
To run the latest image of master branch along side with local MySQL database and local MQTT broker, which are needed to run the app, use this command from this repository:
```
docker compose up
```
**REQUIREMENTS:**
- Cloned repository
- Docker installed
- Logged in as a FIT GitLab user. To do that, just use this command:
```
docker login gitlab.fit.cvut.cz:5000
```

and enter your FIT GitLab credentials. <br /> <br />
**NOTE: Make sure you made the right configurations.** See *VOLUMES* part in the *docker-compose.yml* file to see the files that are used for database, mqtt broker and SimEmulator app configurations.  

**NOTE: Running Docker on Linux host**  
Sometimes an error may occur when launching the app via docker-compose on a **Linux host**.
If you get something like:
`socket.gaierror: [Errno -3] Temporary failure in name resolution` from the **app** container,
modify the **app** section in `docker-compose.yml` file like this:
``` yaml
app:
    image: gitlab.fit.cvut.cz:5000/etcs/simemulator:master
    ports:
      - "5900:5900"
    network_mode: host
    working_dir: /app
    restart: on-failure
    volumes:
      - ./secrets/database:/app/secrets/database
      - ./secrets/mqtt:/app/secrets/mqtt
      - ./configuration.py:/app/configuration.py
    environment:
      DATABASE_CREDENTIALS_FILE: ./secrets/database/docker_compose.json
      MQTT_CREDENTIALS_FILE: ./secrets/mqtt/docker_compose.json
    depends_on:
      mqtt:
          condition: service_started
      database:
          condition: service_healthy
```