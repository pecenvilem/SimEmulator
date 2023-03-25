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