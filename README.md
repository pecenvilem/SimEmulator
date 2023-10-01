# SimEmulator
## Local run
To run the application on your device without installing all dependencies, you can use Docker image. <br />
To run the latest image of master branch alongside with local MySQL database and local MQTT broker, which are needed to run the app, use this command from this repository:
```
docker compose up
```
**REQUIREMENTS:**
- Cloned repository
- Docker installed
- Right configurations made. See ***secrets/database/config.json*** and ***secrets/mqtt/config.json*** (change *host* value to **localhost** or specific desired IP address)
- Logged in as a FIT GitLab user. To do that, just enter <br /> `docker login gitlab.fit.cvut.cz:5050` <br /> and enter your FIT GitLab credentials.

**NOTE: Running Docker on Linux host**  
Sometimes an error may occur when launching the app via docker-compose on a **Linux host**.
Add following row to **app** service in `docker-compose.yml`
```yml
network_mode: host
```
so the **app** service looks something like this:
``` yaml
app:
    image: gitlab.fit.cvut.cz:5050/etcs/simemulator:master
    network_mode: host
    ...
    ...
    ...
```
<br/>
If you want to run only some parts of the script (for example only the database and MQTT broker without SimEmulator app) then just comment out the unwanted services in docker-compose.yml.